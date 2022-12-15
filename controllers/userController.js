const fs = require('fs');
const path = require('path');
const db = require('../database/models');
const sequelize = db.sequelize;



const controller = {

    root: (req, res) => {
        res.render('login')
    },

    login: (req, res) => {
    
            db.user.findOne({
                where: {name: req.body.name}
            }).then((user) => {
                if (user) {
                 if (req.body.password == user.password) {
                  userData = user.dataValues;
                  delete userData.password
                  req.session.user = userData;
                 
                  
                  res.redirect('user/profile'
          
              );
    
                        } else {
                            res.render('login', {
                                errors: [
                                 { msg: 'La contraseña es inválida' }
                                ]
                            });
                        }                  
           
                     } else {
                    res.render('login', {
                        errors: [
                         { msg: 'El usuario no existe' }
                        ]
                    })
                }
            
             })
             
            },
            
        
    
    
    

    profile:async (req, res) => {
        let usuario = await db.user.findOne({
            where:{id: req.session.user.id},
             include: [
                "teams",
                "expertises",
                "articles",
            ]
        });
     
            res.render('dashboard', 
                usuario
            );
       
    },
    

    

}


module.exports = controller;