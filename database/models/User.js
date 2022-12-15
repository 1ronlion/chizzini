module.exports = (sequelize, dataTypes) => {
    let alias = 'user';

    let cols = {
        id: {
            type: dataTypes.INTEGER(11),
            primaryKey: true,
            autoIncrement: true,
        },
        name: {
            type: dataTypes.STRING(45),
            allowNull: false,
        },

        password: {
            type: dataTypes.STRING(45),
            allowNull: false,
        },

    };

    let config = {
        timestamps: false,
        tableName: 'user',
    }

    const User = sequelize.define(alias, cols, config);

        User.associate = function (models){
        
            User.hasMany(models.article, {
                foreignKey: 'user_id'
            }) 
            User.hasMany(models.expertise, {
                foreignKey: 'user_id' 
            }) 
            User.hasMany(models.team, {
                foreignKey: 'user_id' 
            }) 


        }

    return User;
}