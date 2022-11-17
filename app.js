const express = require('express')
const app = express()
const port = 3000

let router = express.Router()
router.get('/', (req, res) => {
  res.send('Hello World!')
})
router.get('/status', (req, res) => {
  return res.json({code:200, message:'process on'}).end();
})

app.use('/alfred-test', router)

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})