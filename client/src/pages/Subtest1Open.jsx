import { Link } from 'react-router-dom'
import './Subtest1Open.css'
import subtest1 from '../sources/subtest-1.JPG'


const Subtest1Open = () => {
  
  return (
    <div className='subtes-1-instruction'>
      <div className='content'>
        <h4>Waktu pengerjaan 7 menit</h4>
          <h5>Instruksi</h5>

          <img src={subtest1} alt="subtest-1" className='instruction-subtest-1' />

          <Link to='/subtest-1'>
            <button className='btn btn-primary flex-button'>MULAI TES</button>
          </Link>
      </div>
    </div>
  )
}

export default Subtest1Open