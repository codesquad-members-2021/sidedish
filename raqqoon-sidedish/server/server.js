const express = require('express');
const app = express();
const port = process.env.PORT || 3001;
const passport = require('passport');
const GitHubStrategy = require('passport-github2');
const cors = require('cors');
require('dotenv').config();

const authRouter = require('./routes/auth.js');

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cors());
app.use(passport.initialize());
app.use(passport.session());

app.use('/auth', authRouter);

passport.use(
  new GitHubStrategy(
    {
      clientID: process.env.GITHUB_CLIENT_ID,
      clientSecret: process.env.GITHUB_CLIENT_SECRET,
      callbackURL: 'http://localhost:3000/auth/github/callback',
    },
    (accessToken, refreshToken, profile, done) => {
      return done(null, profile);
    }
  )
);

app.listen(port, () => {
  console.log(`express is running on ${port}`);
});
