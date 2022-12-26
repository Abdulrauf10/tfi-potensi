import React from 'react'
import './Finish.css'
import image from '../sources/Logo-TFI-1.png'

const Finish = () => {
  return (
    <div className='finish'>
      <img src={image} alt="talentfit" className='talentfit' />
      <h2>Terima kasih atas partisipasi anda</h2>
    </div>
  )
}

export default Finish