const express = require('express');
const app = express();
const port = process.env.PORT || 3001;

app.use(express.urlencoded({ extended: false }));

app.listen(port, () => {
  console.log(`express is running on ${port}`);
});
