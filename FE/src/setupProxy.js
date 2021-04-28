const { createProxyMiddleware } = require("http-proxy-middleware");
const cors = require("cors");

// src/setupProxy.js
module.exports = function (app) {
  app.use(
    cors(
      "/api",
      createProxyMiddleware({
        target: "http://3.35.230.0:8080",
        changeOrigin: true,
      })
    )
  );
};
