const express = require('express')
const Usr = require('../models/usuario.model')
const router = express.Router()


router.post('/signup',(req,res)=>{
    Usr.findOne({email:req.body.email},(err,usr)=>{
        if(err){
            console.log(err)
            res.json(err)
        }else{
            if(usr==null){
                const usr = Usuario({
                    email:req.body.email,
                    senha:req.body.senha
                })
                usr.save()
                .then((err)=>{
                    if(err){
                        console.log(err)
                        res.json(err)
                    }else{
                        console.log(usr)
                        res.json(usr)
                    }
                    
                })
            }else{

            res.json({
                message:'email não existe'
            })   
            }
        }
    })
    
})

router.post('/signin',(req,res)=>{
    User.findOne({email:req.body.email,senha:req.body.senha},(err,usr)=>{
        if(err){
            console.log(err)
            res.json(err)
        }else{
            res.json(usr)   
        }
    })
})
module.exports = router