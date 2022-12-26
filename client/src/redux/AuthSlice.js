import { createSlice } from '@reduxjs/toolkit'

const participantFroLocalStorage = () => {
  const isAuth = localStorage.getItem('isAuth')

  if (isAuth && JSON.parse(isAuth) === true) {
    return true
  }

  return false
}

const initialState = {
  isAuth: participantFroLocalStorage(),
}

export const authSlice = createSlice({
  name: 'auth',
  initialState,
  reducers: {
    authenticateParticipant: (state) => {
      state.isAuth = true
    },
    unauthenticateParticipant: (state) => {
      state.isAuth = false
    },
  },
})

export const { authenticateParticipant, unauthenticateParticipant } = authSlice.actions

export default authSlice.reducer