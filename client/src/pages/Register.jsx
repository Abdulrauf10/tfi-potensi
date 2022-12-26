import { useState} from 'react'
import { Link, useNavigate } from 'react-router-dom'
import './Register.css'
import logo from '../sources/Logo-TFI-1.png'

import { register } from '../api/Auth'


const Register = () => {
  const [name, setName] = useState('')
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [whatsapp, setWhatsapp] = useState()
  const [company, setComapny] = useState('')
  const [user, setUser] = useState('')
  const [error, setError] = useState(false)

  const navigate = useNavigate()

  const registerData = async (e) => {
    e.preventDefault()

    const dataParticipant ={
      name: name, 
      email: email, 
      password: password, 
      whatsapp: whatsapp, 
      company: company, 
      user_type: user
    }

    try {
      await register(dataParticipant)
      setError('')
      navigate('/login')
    } catch (error) {
      setError(error)
    }
         
    
  }

  return (
    <div className='register'>
      <div className="register-left">
        <h2 className='tfi'>Talent Fit Indonesia</h2>
      </div>

      <div className="register-right">
        <img src={logo} alt="tfi" className='tfi-logo'/>
        <h3 className='sign-up'>Daftar untuk memulai tes</h3>

        <form className='form-registrasi' onSubmit={registerData}>
          <label>Nama Lengkap</label>
          <input type="text" placeholder='Nama Lengkap' className='register-input' onChange={e => setName(e.target.value)}/>
          <label>Email</label>
          <input type="text" placeholder='email' className='register-input' onChange={e => setEmail(e.target.value)}/>
          <label>Password</label>
          <input type="password" placeholder='Password' className='register-input' onChange={e => setPassword(e.target.value)}/>
          <label>Whatsapp</label>
          <div className='contact'>
            <h6 className='indonesian'>+62</h6>
            <input type="text" placeholder='852...' className='register-input' onChange={e => setWhatsapp(e.target.value)}/>
          </div>
          <label>Perusahaan yang diapply</label>
          <input type="text" placeholder='Nama Perusahaan' className='register-input' onChange={e => setComapny(e.target.value)}/>
          <select name='user' className='register-input' onChange={(e) => setUser(e.target.value)}>
            <option value="-- Pilih User --">-- Pilih User --</option>
            <option value="peserta">peserta</option>
          </select>

          <div style={{ color: 'red', margin: '10px 0' }}>{error}</div>
          <button className='btn btn-primary'>Daftar</button>
          <Link to='/login'>Sudah punya akun? login disini</Link>
        </form>
      </div>
    </div>
  )
}

export default Register
