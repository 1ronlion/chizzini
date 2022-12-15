const fs = require('fs');
const path = require('path');
const db = require('../database/models');
const sequelize = db.sequelize;
const { Op } = require("sequelize");


const controller = {

    root:(req, res,) => {

    let articles = db.article.findAll({ limit: 5, order: [
     
      ['id', 'DESC'] ] 
  
  });

    let expertises = db.expertise.findAll({ limit: 5, order: [
     
      ['id', 'DESC'] ] 
  
  });

    
        Promise.all([articles,expertises])
           .then(data => {
           let [articles,expertises] = data 
         
            res.render('index', {
                articles,expertises
            });
        })
    },

 
    search: (req, res) => {
        let articles = db.article.findAll({
            where: {
                    [Op.or]: [
                      {
                        title: {
                          [Op.like]: '%'+req.query.busqueda+'%'
                        }
                      },
                      {
                        excerpt: {
                            [Op.like]: '%'+req.query.busqueda+'%'
                        }
                      },
                      {
                        content: {
                            [Op.like]: '%'+req.query.busqueda+'%'
                        }
                      }
                    ]
            },
        });
        let expertises = db.expertise.findAll({
            where: {
                    [Op.or]: [
                      {
                        category: {
                          [Op.like]: '%'+req.query.busqueda+'%'
                        }
                      },
                      {
                        excerpt: {
                            [Op.like]: '%'+req.query.busqueda+'%'
                        }
                      },
                      {
                        content: {
                            [Op.like]: '%'+req.query.busqueda+'%'
                        }
                      }
                    ]
            },
        });
        let teams = db.team.findAll({
            where: {
                    [Op.or]: [
                      {
                        name: {
                          [Op.like]: '%'+req.query.busqueda+'%'
                        }
                      },
                      {
                        content: {
                            [Op.like]: '%'+req.query.busqueda+'%'
                        }
                      }
                    ]
            },
	
			
        });
        Promise.all([articles,expertises, teams])
            .then (data => {
                let [articles,expertises, teams] = data;
            res.render('busqueda', {
                   articles,
                   expertises,
                   teams,
                })
    })
    },


        aboutUs: (req, res) => {
            res.render('contact')
        },
    

}


module.exports = controller;