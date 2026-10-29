const express = require("express");
const app = express();
const port = process.env.PORT || 8080;

app.get("/health", (req, res) => res.status(200).json({ status: "ok" }));

app.get("/api/info", (req, res) => {
  res.json({
    name: process.env.APP_NAME || "demo-api",
    version: process.env.APP_VERSION || "1.0.0",
    environment: process.env.APP_ENV || "dev",
  });
});

app.listen(port, "0.0.0.0", () => console.log(`listening on ${port}`));