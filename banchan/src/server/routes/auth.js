const axios = require("axios");
const express = require("express");
const router = express.Router();
const jwt = require("jsonwebtoken");

router.post("/auth", async (req, res) => {
  //
  const { code } = req.body;
  const response = await axios.post(
    "https://github.com/login/oauth/access_token",
    {
      code,
      client_id: process.env.GH_ID,
      client_secret: process.env.GH_SECRET,
    },
    {
      headers: {
        accept: "application/json",
      },
    }
  );

  conosle.log(`response: ${response}`);

  const token = response.data.access_token;

  console.log(`token: ${token}`);

  const { data } = await axios.get("https://api.github.com/user", {
    headers: {
      Authorization: `token ${token}`,
    },
  });

  console.log(`data: ${data}`);

  const jwt_token = jwt.sign({ login: data.login, id: data.id }, "ajaAJA");

  console.log(`jwt_token: ${jwt_token}`);

  return res.json({ jwt_token });
});

module.exports = router;
