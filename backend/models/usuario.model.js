const mongoose = require('mongoose')
const Schema = mongoose.Schema

const newSchema = new Schema({
    email:String,
    senha:String
})

module.exports = mongoose.model('Usuario',newSchema)