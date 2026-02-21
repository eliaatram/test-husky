const dotenv = require('dotenv')
dotenv.config({path:'./.env.staging'})

module.exports = {
  endpoint: process.env.API_URL,
  masterKey: process.env.API_KEY,
  port: process.env.PORT
};
