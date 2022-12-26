const pool = require("../db")
const jwtGenerator = require('../utils/jwtGenerator')
const bcrypt = require('bcrypt')


module.exports = {
  registerDataParticipant: async (req, res) => {
    const {
      name,
      email,
      password,
      whatsapp,
      company,
      user_type
    } = req.body
    try {
      const user = await pool.query('select * from participant where email = $1', [email])

      if (user.rows.length > 0) {
      return res.status(401).json("User already exist!");
    }
      const salt = await bcrypt.genSalt(10);
      const bcryptPassword = await bcrypt.hash(password, salt);

      const newUser = await pool.query('INSERT INTO participant (name, email, password, whatsapp, company, user_type) VALUES ($1, $2, $3, $4, $5, $6)', [name, email, bcryptPassword, whatsapp, company, user_type])

      const jwtToken = jwtGenerator(newUser.rows[0])

      return res.status(200).json(jwtToken)
    } catch (error) {
      return res.status(500).json(error.message)
    }
  },
  loginDataParticipant: async (req, res) => {
    const { email, password } = req.body

    try {
      const user = await pool.query('select * from participant where email = $1', [email])

      if(user.rows.length === 0) {
        return res.status(401).json('wrong email or password')
      }

      const validPassword = await bcrypt.compare(password, user.rows[0].password)

      if(!validPassword){
        return res.status(401).json('wrong email or password')
      }

      const jwtToken = jwtGenerator(user.rows[0].p_id)
      
      return res.status(200).json({jwtToken})
    } catch (error) {
      return res.status(500).json(error.message)
    }
  },
  getParticipant: async (req, res) => {
    try {
      const user = await pool.query('SELECT p_id, name, email, user_type FROM participant where p_id = $1', [req.user])

      return res.status(200).json(user.rows[0])
    } catch (error) {
      return res.status(500).json(error.message)
    }
  }
  // verifyParticipant: async (req, res) => {
  //   try {
  //     let user = req.user
  //     return res.status(200).json({info: user})
  //   } catch (error) {
  //     return res.status(404).json(error.message)
  //     }
  // },
  
}