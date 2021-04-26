const express = require('express');
const app = express();
const port = process.env.PORT || 3001;
const cors = require('cors');

app.use(cors());

app.use(express.urlencoded({ extended: false }));

app.get('/github/auth', function (req, res) {
  res.send({ greet: 'hello' });
});

app.listen(port, () => {
  console.log(`express is running on ${port}`);
});
