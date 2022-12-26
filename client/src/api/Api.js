import axios from 'axios'

const baseUrl = process.env.NODE_ENV === 'production'? '/api' : 'http://localhost:8000/api'

export const allParticipant = async () => {
  try {
    return await axios.get(`${baseUrl}/participant`)
  } catch (error) {
    console.log(error)
  }
}

export const questions = async () => {
  try {
    return await axios.get(`${baseUrl}/question-and-choice`)
  } catch (error) {
    return console.log(error)
  }
}

export const sendAnswer = async (answers) => {
  try {
    return await axios.post(`${baseUrl}/participant-answer`, answers)
  } catch (error) {
    console.log(error)
  }
}

export const getAnswers = async () => {
  try {
    return await axios.get(`${baseUrl}/get-participant-answer`)
  } catch (error) {
    return console.log(error)
  }
}





