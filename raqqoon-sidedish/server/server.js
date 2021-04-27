const express = require('express');
const app = express();
const port = process.env.PORT || 3001;
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
      return { accessToken };
    }
  )
);

app.get(
  '/auth/github',
  passport.authenticate('github', { scope: ['user:email'] })
);

app.get(
  '/auth/github/callback',
  passport.authenticate('github', { failureRedirect: '/login' }),
  function (req, res) {
    // Successful authentication, redirect home.
    res.redirect('/');
  }
);

app.post('/auth', async (req, res) => {
  const { data: code } = await req.body;
  //axios 로 바꿔야함
  const response = await fetch(
    `https://github.com/login/oauth/access_token?client_id=${process.env.GITHUB_CLIENT_ID}&client_secret=${process.env.GITHUB_CLIENT_SECRET}&code=${code}`,
    {
      method: 'POST',
      headers: {
        accept: 'application/json',
      },
    }
  );

  const accessToken = response.data.access_token;
  console.log(accessToken);
});

app.listen(port, () => {
  console.log(`express is running on ${port}`);
});
