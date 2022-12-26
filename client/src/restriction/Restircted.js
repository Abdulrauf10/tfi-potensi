import {useEffect} from 'react'
import { useNavigate, Outlet } from 'react-router-dom'
import { protectedUser } from '../api/Auth'

const Restircted = () => {
  const navigate = useNavigate()


  useEffect(() => {
    protectedUser()
    .then((res) => {
      console.log(res)
    })
    .catch(() =>{
      navigate('/login')
    })
  }, [navigate])

  return <Outlet/>
}

export default Restircted