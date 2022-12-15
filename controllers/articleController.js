const fs = require('fs');
const path = require('path');
const db = require('../database/models');
const sequelize = db.sequelize;



const controller = {

        root:(req, res,) => {

            let articles = db.article.findAll({ limit: 5, order: [
     
                ['id', 'DESC'] ] 
            
            });

            
                
    
                Promise.all([articles])
                   .then(data => {
                   let [articles] = data 
                 
                    res.render('articles', {
                        articles
                    });
                })
            },

        detail: (req, res)  => {
            db.article.findByPk(req.params.id)
        
                .then((articles) => {
                    res.render('articleDetail', {
                        articles
                    })
        
                })
            
        },    


        redact:(req, res,) => {
            let usuario = db.user.findOne()
            let articles = db.article.findAll();

        
            Promise.all([articles,usuario])
               .then(data => {
               let [articles,usuario] = data 
             
                res.render('articleCreateForm', {
                   usuario,articles
                });
            })
        },
        
        
        
        create: (req, res,) => {

        let article =  db.article.findOrCreate({
             where: {
                    title: req.body.title,
                    excerpt: req.body.excerpt,
                    content: req.body.content,
                    user_id: req.session.user.id,
                    photo: req.body.img}
                            
                        })
       
                        Promise.all([article])
                        .then(data => {
                        let [article] = data 
            
                        res.redirect('/user/profile')
                            
                        }) 
                        
                    
                },
                


                edit:(req, res,) => {
                    let usuario = db.user.findOne();
                    let articles = db.article.findByPk(req.params.id);

                    Promise.all([articles,usuario,])
                       .then(data => {
                       let [articles,usuario,] = data 
                     
                        res.render('articleEditForm', {
                            articles,usuario,
                        });
                    })
                },
                
                
                
                update: (req, res) => {
                    let usuario = db.user.findOne();
                    let articles = db.article.update({
                            title: req.body.title,
                            excerpt: req.body.excerpt,
                            content: req.body.content,
                            user_id: req.session.user.id,
                            photo: req.body.img},
                            {
                            where: {id: req.params.id}
                        
                     }) 
               
                    Promise.all([usuario,articles])
                    .then(data => {
                    let [usuario,articles] = data 
                  
                     res.redirect('/user/profile/')
                     });
                    },

                    
                        
                    delete: (req,res)=> {
                        db.article.findByPk(req.params.id)
        
                        .then((articles) => {
                            res.render('articleDelete', {
                                articles
                            })
                
                        })
                    
                },    
                    

                    destroy: (req, res) => {
                        db.article.destroy({
                        where: {
                        id: req.params.id,
                            }
                            })
                            res.redirect('/user/profile/');

                        },

                        
        
        
                    
            

}


module.exports = controller;