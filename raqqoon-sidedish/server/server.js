const express = require('express');
const app = express();
const port = process.env.PORT || 3001;
const axios = require('axios');
const jwt = require('jsonwebtoken');
const passport = require('passport');
const GitHubStrategy = require('passport-github2');
const cors = require('cors');
require('dotenv').config();

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cors());

passport.use(
  new GitHubStrategy(
    {
      clientID: process.env.GITHUB_CLIENT_ID,
      clientSecret: process.env.GITHUB_CLIENT_SECRET,
      callbackURL: 'http://localhost:3000/auth/github/callback',
    },
    function (accessToken, refreshToken, profile, done) {
      return done(null, profile);
    }
  )
);

app.get(
  '/auth/github',
  passport.authenticate('github', { scope: ['user:email'] })
);

app.get(
  'http://localhost:3000/auth/github/callback',
  passport.authenticate('github', { failureRedirect: '/' }),
  function (req, res) {
    res.redirect('/');
  }
);

app.post('/auth', async (req, res) => {
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
    .catch((error) => console.error('error'));
  const token = response.data.access_token;

  // 로그인한 유저의 정보를 받아오는 코드
  const { data } = await axios.get('https://api.github.com/user', {
    headers: {
      Authorization: `token ${token}`,
    },
  });

  // db logic

  const access_token = jwt.sign(
    { login: data.login, id: data.id },
    client_secret,
    {
      expiresIn: '1d',
      issuer: 'Raqqoon',
      subject: 'userInfo',
    }
  );
  return res.json({ access_token });
});

app.listen(port, () => {
  console.log(`express is running on ${port}`);
});
