import { Link } from 'react-router-dom'

import subtest4a from '../sources/subtest-4.1.JPG'
import subtest4b from '../sources/subtest-4.2.JPG'

const Subtest4Open = () => {
  return (
    <div className='subtes-1-instruction'>
      <div className='content'>
        <h4>Waktu pengerjaan 12 menit</h4>
          <h5>Instruksi</h5>

          <img src={subtest4a} alt="subtest-1" className='instruction-subtest-2' />
          <img src={subtest4b} alt="subtest-1" className='instruction-subtest-2' />

          <Link to='/subtest-4'>
            <button className='btn btn-primary flex-button'>MULAI TES</button>
          </Link>
      </div>
    </div>
  )
}

export default Subtest4Open