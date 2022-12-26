import axios from "axios";

const baseUrl = process.env.NODE_ENV === 'production'? '/api' : 'http://localhost:8000/api'

export const register = async (dataParticipant) => {
    return await axios.post(`${baseUrl}/register-participant`, dataParticipant)
}

export const login = async (dataParticipant) => {
  try {
    return await axios.post(`${baseUrl}/login-participant`, dataParticipant)
  } catch (error) {
    console.log(error)
  }   
}

export const protectedUser = async () => {
  try {
    return await axios.get(`${baseUrl}/participant`, {
      headers: {token: localStorage.getItem('token')}
    })

  } catch (error) {
    console.log("api error: ", error)
  }
}