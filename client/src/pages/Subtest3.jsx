import { useState, useEffect} from 'react'
import './Subtest3.css'
import ReactPaginate from 'react-paginate'
import { Link } from 'react-router-dom'

import { questions } from '../api/Api'
import { protectedUser } from '../api/Auth' 

const Subtest1 = () => {
  const [question, setQuestion] = useState([])
  const [user, setUser] = useState()
  const [page, setPage] = useState(0)

  useEffect(() => {
    questions()
    .then((res) => {
      setQuestion(res.data)
    })
  }, [])

  useEffect(() => {
    protectedUser()
    .then((res) => {
      setUser(res.data)
      console.log(res.data)
    })
  }, [])

  const filterQuestion = question.filter((item) =>{
    return item.q_id > 66 && item.q_id <= 106
  })
  
  const questionPerPage = 1;
  const pageVisited = page * questionPerPage

  const displayQuestion = filterQuestion.slice(pageVisited, pageVisited + questionPerPage).map((item, index) => {
        return <div key={index}>
          <div className="question">
            <h6>{item.question}</h6>
          </div>

          <div className="choice-is-correct">
            <div className="is-correct">
              {item.is_correct.map((item3, index3) => {
                return <div key={index3}>
                  <input type="radio" value={item3} className='input-is-correct' />
                </div>
              })}
            </div>

            <div className="choice">
              {item.choice.map((item2, index2) => {
              return <div key={index2} className='choice-subtest-3'>
                <p>{item2}</p> 
              </div>
            })}
            </div>
          </div>
        </div>
      })

  const pageCount = Math.ceil(filterQuestion.length / questionPerPage)

   const changePage = ({ selected }) => {
    setPage(selected);
  };

  return (
    <div className='subtest-1'>
      <ReactPaginate
      previousLabel={"Previous"}
      nextLabel={"Next"}
      pageCount={pageCount}
      onPageChange={changePage}
      containerClassName={"paginationBttns"}
      previousLinkClassName={"previousBttn"}
      nextLinkClassName={"nextBttn"}
      disabledClassName={"paginationDisabled"}
      activeClassName={"paginationActive"}
      />
      {displayQuestion}
      <p className='click-submit'>Kilk SUBMIT ketika selesai menjawab semua soal</p>
      <Link to='/section-4'>
        <button className='btn btn-primary'>SUBMIT</button>
      </Link>
    </div>
  )
}

export default Subtest1