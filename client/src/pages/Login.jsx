import { useState} from 'react'
import { useNavigate } from 'react-router-dom'
import './Login.css'
import logo from '../sources/Logo-TFI-1.png'

import { login } from '../api/Auth'

const Login = () => {
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')

  const navigate = useNavigate()

  const loginUser = async (e) => {
    e.preventDefault()
    const data = { email, password}

    await login(data)
    .then((res) => {
      localStorage.setItem('token', res.data.jwtToken)
      navigate('/section-1')
    })
    .catch((error) => {
      alert("Wrong password or email")
    })       
  }

  return (
    <div className='login'>
      <img src={logo} alt="tfi" className='tfi-login'/>
      <h2>Masuk ke halaman tes</h2>

      <form onSubmit={loginUser} className='login-form'>
        <label>Email</label>
        <input type="text" placeholder='Email' className='login-input' onChange={e => setEmail(e.target.value)} />
        <label>Password</label>
        <input type="password" placeholder='Password' className='login-input' onChange={e => setPassword(e.target.value)} />

        <button className='btn btn-primary'>Masuk</button>
      </form>
    </div>
  )
}

export default Login