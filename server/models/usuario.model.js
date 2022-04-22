const mongoose = require('mongoose')
const Schema = mongoose.Schema

const usuarioSchema = new Schema({
    nomecompleto: {
        type: String,
        required: true
    },
    email:{
        type: String,
        required: true
    },
    senha:{
        type: String,
        required: true
    },
}, {timestamps: true})

const Usuario = mongoose.model('usuarios', usuarioSchema);
module.exports = Usuario;