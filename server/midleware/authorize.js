const { SECRET } = require('../constant/constant')
const jwt = require('jsonwebtoken')

module.exports = function (req, res, next) {
  const jwtToken = req.header('token')

  // Check if not token
  if (!jwtToken) {
    return res.status(403).json({ msg: "authorization denied" });
  }

  // Verify token
  try {
    //it is going to give use the user id (user:{id: user.id})
    const verify = jwt.verify(jwtToken, SECRET);

    req.user = verify.user;
    next();
  } catch (err) {
    res.status(401).json(err.message);
  }
}