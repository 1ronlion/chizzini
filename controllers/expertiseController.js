const fs = require('fs');
const path = require('path');
const db = require('../database/models');
const sequelize = db.sequelize;



const controller = {

        root:(req, res,) => {

            let expertises = db.expertise.findAll({ order: [['id', 'DESC']],
            });
    
                Promise.all([expertises])
                   .then(data => {
                   let [expertises] = data 
                 
                    res.render('expertise', {
                        expertises
                    });
                })
            },

        detail: function(req, res) {
            db.expertise.findByPk(req.params.id)
        
                .then((expertise) => {
                    res.render('expertiseDetail', {
                        expertise
                    })
        
                })
            
        },    

        redact:(req, res,) => {
            let usuario = db.user.findOne()
            let expertise = db.expertise.findAll();

        
            Promise.all([expertise,usuario])
               .then(data => {
               let [expertise,usuario] = data 
             
                res.render('expertiseCreateForm', {
                   usuario, expertise
                });
            })
        },
        
        
        
        create: (req, res,) => {

        let expertise =  db.expertise.findOrCreate({
             where: {
                    category: req.body.category,
                    excerpt: req.body.excerpt,
                    content: req.body.content,
                    user_id: req.session.user.id,
                    photo: req.body.img}
                            
                        })
       
                        Promise.all([expertise])
                        .then(data => {
                        let [expertise] = data 
            
                        res.redirect('/user/profile')
                            
                        }) 
                        
                    
                },
                


                edit:(req, res,) => {
                    let usuario = db.user.findOne();
                    let expertise = db.expertise.findByPk(req.params.id);

                    Promise.all([expertise,usuario,])
                       .then(data => {
                       let [expertise,usuario,] = data 
                     
                        res.render('expertiseEditForm', {
                            expertise,usuario,
                        });
                    })
                },
                
                
                
                update: (req, res) => {
                    let usuario = db.user.findOne();
                    let expertise = db.expertise.update({
                        category: req.body.category,
                        excerpt: req.body.excerpt,
                        content: req.body.content,
                        user_id: req.session.user.id,
                        photo: req.body.img},
                            {
                            where: {id: req.params.id}
                        
                     }) 
               
                    Promise.all([usuario,expertise])
                    .then(data => {
                    let [usuario,expertise] = data 
                  
                     res.redirect('/user/profile/')
                     });
                    },

                    
                        
                    delete: (req,res)=> {
                        db.expertise.findByPk(req.params.id)
        
                        .then((expertise) => {
                            res.render('expertiseDelete', {
                                expertise
                            })
                
                        })
                    
                },    
                    

                    destroy: (req, res) => {
                        db.expertise.destroy({
                        where: {
                        id: req.params.id,
                            }
                            })
                            res.redirect('/user/profile/');

                        },


}


module.exports = controller;