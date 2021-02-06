const { Pool } = require('pg');
const { postgres_passw } = require('./secrets');


const pool = new Pool({
  user: 'postgres',
  password: postgres_passw,
  host: 'localhost',
  database: 'lightbnb',
});

module.exports = {
  query: (text, params) => pool.query(text, params),
};
