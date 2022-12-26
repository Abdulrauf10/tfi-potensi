const express = require('express')
const route = express.Router()

const { registerDataParticipant, loginDataParticipant, getParticipant } = require('./controllers/authController')
const { getQuestionAndChoices, postParticipantAnswer, getAnswerParticipant } = require('./controllers/assessmentController')
const validation = require('./midleware/validation')
const authorize = require('./midleware/authorize')




route.post('/api/register-participant', validation, registerDataParticipant)
route.post('/api/login-participant', validation, loginDataParticipant)
route.get('/api/participant', authorize, getParticipant)
route.get('/api/question-and-choice', getQuestionAndChoices)
route.post('/api/participant-answer', postParticipantAnswer)
route.get('/api/get-participant-answer', getAnswerParticipant)


module.exports = route;