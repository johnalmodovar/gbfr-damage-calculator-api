/** Config options for entire API. */

require('dotenv').config();

const port = process.env.PORT || 3001;

/** Use either dev database, testing database, or database within .env. */
function getDatabaseUri(): string | undefined {
  return (process.env.NODE_ENV === "test")
  ? "" //TODO: set up dev database once seed has been created to create database.
  : process.env.DATABASE_URL;
};

module.exports = {
  port,
  getDatabaseUri,
};