module.exports = (sequelize, dataTypes) => {
    let alias = 'expertise';

    let cols = {
        id: {
            type: dataTypes.INTEGER(11),
            primaryKey: true,
            autoIncrement: true,
        },
        category: {
            type: dataTypes.STRING(33),
            allowNull: false,
        },
        excerpt: {
            type: dataTypes.STRING(200),
            allowNull: false,
        },

        photo: {
            type: dataTypes.STRING(500),
            allowNull: false,
        },

        content: {
            type: dataTypes.STRING(3000),
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
        tableName: 'expertise',
    }

    const Expertise = sequelize.define(alias, cols, config);

        Expertise.associate = function (models){
        
        Expertise.belongsTo(models.user, {
            as: "user",
            foreignKey: "user_id"
        })


        }

    return Expertise;
}