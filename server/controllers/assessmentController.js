const { hash } = require("bcryptjs")
const { sign } = require("jsonwebtoken")
const pool = require("../db")
const { SECRET } = require('../constant/constant')
require('core-js')

module.exports = {
  getQuestionAndChoices: async (req, res) => {
    try {
      const getAllData = await pool.query('SELECT q_id, question, question_type, ARRAY_AGG(choice) AS choice, ARRAY_AGG(is_correct) AS is_correct FROM questions JOIN choices ON questions.q_id = choices.question_id GROUP BY q_id, question, question_type ORDER BY q_id, question, question_type')

      // select t_id, text1, test_id, array_agg(choice) as choice from test1 join answer on test1.t_id = answer.test_id group by t_id, text1, test_id order by t_id, text1, test_id

      // let group = {}
      // const finalResult = dataResult.reduce(function(result, currentValue){
      //   let key = currentValue.text1

      //   if(!group[key]){
      //     group[key] = Object.assign({}, currentValue)
      //     result.push(group[key])
      //   } else {
      //     group[key].choice = Object.values(group[key].choice, currentValue.choice)
      //   }
        
      //   return result
      // }, [])

      return res.status(200).json(getAllData.rows)
    } catch (error) {
      return res.status(400).json(error.message)
    }
  },
  postParticipantAnswer: async (req, res) => {
    const {
        participant_id,
        question_id,
        answer1,
        answer2
      } = req.body
    try {
      const insertAnswer = await pool.query('INSERT into participant_answer (participant_id, question_id, answer1, answer2) VALUES ($1, $2, $3, $4) RETURNING *', [participant_id, question_id, answer1, answer2]) 

      return res.status(200).json(insertAnswer.rows[0])
    } catch (error) {
      return res.status(404).json(error.message)
    }
  },
  getAnswerParticipant: async (req, res) => {
    try {
      const getAllData = await pool.query('SELECT * from participant JOIN participant_answer on participant.p_id = participant_answer.participant_id JOIN questions ON participant_answer.question_id = questions.q_id')
      // p_id, name, email, whatsapp, company, created_at, user_type, answer1

      return res.status(200).json(getAllData.rows)
    } catch (error) {
      return res.status(400).json(error.message)
    }
  }
}