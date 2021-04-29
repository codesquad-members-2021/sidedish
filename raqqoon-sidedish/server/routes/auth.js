const express = require('express');
const router = express.Router();
const axios = require('axios');
const jwt = require('jsonwebtoken');
const passport = require('passport');

router.get(
  '/github',
  passport.authenticate('github', {
    scope: ['user', 'gist', 'notifications', 'repo'],
  })
);

router.post('/', async (req, res) => {
  const client_id = process.env.GITHUB_CLIENT_ID;
  const client_secret = process.env.GITHUB_CLIENT_SECRET;
  const { data: code } = await req.body;
  const response = await axios
    .post(
      'https://github.com/login/oauth/access_token',
      {
        code,
        client_id,
        client_secret,
      },
      {
        headers: {
          accept: 'application/json',
        },
      }
    )
    .catch((error) => console.error('error in /auth'));
  const token = response.data.access_token;

  const { data } = await axios.get('https://api.github.com/user', {
    headers: {
      Authorization: `token ${token}`,
    },
  });

  const access_token = jwt.sign({ login: data.login, id: data.id }, client_id, {
    expiresIn: '1d',
    issuer: 'Raqqoon',
    subject: 'userInfo',
  });

  const { login } = data;

  return res.json({ access_token, login });
});

module.exports = router;
