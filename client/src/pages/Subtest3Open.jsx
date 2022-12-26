import { Link } from 'react-router-dom'

import subtest3a from '../sources/subtest-3.1.JPG'
import subtest3b from '../sources/subtest-3.2.JPG'

const Subtest3Open = () => {
  return (
    <div className='subtes-1-instruction'>
      <div className='content'>
        <h4>Waktu pengerjaan 5 menit</h4>
          <h5>Instruksi</h5>

          <img src={subtest3a} alt="subtest-1" className='instruction-subtest-2' />
          <img src={subtest3b} alt="subtest-1" className='instruction-subtest-2' />

          <Link to='/subtest-3'>
            <button className='btn btn-primary flex-button'>MULAI TES</button>
          </Link>
      </div>
    </div>
  )
}

export default Subtest3Open