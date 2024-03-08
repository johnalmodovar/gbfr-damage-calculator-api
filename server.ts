const app = require('./app');
const { port } = require('./config');

app.listen(port, () => {
  console.log(`[server]: Server is running at http://localhost:${port}`);
});