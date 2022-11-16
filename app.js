const express = require('express')
const app = express()
const port = 3000

app.get('/alfred-test/', (req, res) => {
  res.send('Hello World!')
})

app.get('/alfred/status', (req, res) => {
  return res.json({code:200, message:'process on'}).end();
})


app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})