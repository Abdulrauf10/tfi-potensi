const jwt = require('jsonwebtoken')
const { SECRET } = require('../constant/constant')

module.exports = function jwt_generator(p_id) {
  const payload = {
    user: p_id
  }

  return jwt.sign(payload, SECRET)
}