import { Link } from 'react-router-dom'

import subtest2 from '../sources/subtest-2.JPG'

const Subtest2Open = () => {
  return (
    <div className='subtes-1-instruction'>
      <div className='content'>
        <h4>Waktu pengerjaan 7 menit</h4>
          <h5>Instruksi</h5>

          <img src={subtest2} alt="subtest-1" className='instruction-subtest-2' />

          <Link to='/subtest-2'>
            <button className='btn btn-primary flex-button'>MULAI TES</button>
          </Link>
      </div>
    </div>
  )
}

export default Subtest2Open