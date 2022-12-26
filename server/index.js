const express = require ('express')
const app = express()
const cors = require('cors')
const { PORT, CLIENT_URL } = require('./constant/constant')
const router = require('./router')

app.use(express.json())
app.use(cors({origin: CLIENT_URL, credentials: true}))
app.use(router)


app.listen(PORT, () => {
  console.log(`app is running on port ${PORT}`)
})