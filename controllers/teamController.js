const fs = require('fs');
const path = require('path');
const db = require('../database/models');
const sequelize = db.sequelize;



const controller = {

        root:(req, res,) => {

            let teams = db.team.findAll()
    
                Promise.all([teams])
                   .then(data => {
                   let [teams] = data 
                 
                    res.render('team', {
                        teams
                    });
                })
            },

        detail: function(req, res) {
            db.team.findByPk(req.params.id)
        
                .then((team) => {
                    res.render('teamDetail', {
                        team
                    })
        
                })
            
        },

        redact:(req, res,) => {
            let usuario = db.user.findOne()
            let equipo = db.team.findAll();

        
            Promise.all([equipo,usuario])
               .then(data => {
               let [equipo,usuario] = data 
             
                res.render('teamCreateForm', {
                   equipo,usuario
                });
            })
        },
        
        
        
        create: (req, res,) => {

        let equipo =  db.team.findOrCreate({
             where: {
                    name: req.body.name,
                    excerpt: req.body.excerpt,
                    content: req.body.content,
                    email: req.body.email,
                    linkedin: req.body.linkedin,
                    user_id: req.session.user.id,
                    photo: req.body.img}
                            
                        })
       
                        Promise.all([equipo])
                        .then(data => {
                        let [equipo] = data 
            
                        res.redirect('/user/profile')
                            
                        }) 
                        
                    
                },
                


                edit:(req, res,) => {
                    let usuario = db.user.findOne();
                    let team = db.team.findByPk(req.params.id);

                    Promise.all([team,usuario,])
                       .then(data => {
                       let [team,usuario,] = data 
                     
                        res.render('teamEditForm', {
                            team,usuario,
                        });
                    })
                },
                
                
                
                update: (req, res) => {
                    let usuario = db.user.findOne();
                    let equipo = db.team.update({
                            name: req.body.name,
                            excerpt: req.body.excerpt,
                            content: req.body.content,
                            user_id: req.session.user.id,
                            email: req.body.email,
                            linkedin: req.body.linkedin,
                            photo: req.body.img},
                            {
                            where: {id: req.params.id}
                        
                     }) 
               
                    Promise.all([equipo,usuario])
                    .then(data => {
                    let [usuario,equipo] = data 
                  
                     res.redirect('/user/profile/')
                     });
                    },

                    
                        
                    delete: (req,res)=> {
                        db.team.findByPk(req.params.id)
        
                        .then((team) => {
                            res.render('teamDelete', {
                                team
                            })
                
                        })
                    
                },    
                    

                    destroy: (req, res) => {
                        db.team.destroy({
                        where: {
                        id: req.params.id,
                            }
                            })
                            res.redirect('/user/profile/');

                        },

    

}


module.exports = controller;