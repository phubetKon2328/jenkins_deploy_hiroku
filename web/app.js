const express = require('express');
const app = express();
const port = 3000; // Set your desired port number

// Define a simple route
app.get('/', (req, res) => {
  res.send('Hello, Express!');
});

// Middleware example
app.use((req, res, next) => {
  console.log('Middleware is executed!');
  next();
});

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
