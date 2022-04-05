const express = require('express')
const app = express()
const port = 8080 || process.env.PORT
const cors = require('cors')
const bodyParser = require('body-parser')

const mongoose = require('mongoose')
mongoose.connect(
    "mongodb+srv://admin:12345@g4c.qwae2.mongodb.net/Database?retryWrites=true&w=majority",
    { 
    useNewUrlParser: true, useUnifiedTopology: true 
    }
)


app.use(cors())
app.use(bodyParser.urlencoded({extended:true}))
app.use(bodyParser.json())
app.use('/',require('./routes/usuario.route'))
app.listen(port,()=>{
    console.log('porta sendo executada na porta '+port)
})