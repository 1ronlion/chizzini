module.exports = (sequelize, dataTypes) => {
    let alias = 'team';

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

        email: {
            type: dataTypes.STRING(50),
            allowNull: false,
        },

        linkedin: {
            type: dataTypes.STRING(50),
            allowNull: false,
        },     

        excerpt: {
            type: dataTypes.STRING(100),
            allowNull: false,
        },

        content: {
            type: dataTypes.STRING(3000),
            allowNull: false,
        },

        photo: {
            type: dataTypes.STRING(450),
            allowNull: false,
        },

        created_at: {
            type: dataTypes.DATE,
            allowNull: true,
        },
        updated_at: {
            type: dataTypes.DATE,
            allowNull: true,
        },
        user_id: {
            type: dataTypes.INTEGER(11),
            allowNull: false,
        },     
        
    };

    let config = {
        timestamps: false,
        tableName: 'team',
    }

    const Team = sequelize.define(alias, cols, config);

        Team.associate = function (models){
        
        Team.belongsTo(models.user, {
            as: "user",
            foreignKey: "user_id"
        })


        }

    return Team;
}