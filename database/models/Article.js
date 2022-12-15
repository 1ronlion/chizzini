module.exports = (sequelize, dataTypes) => {
    let alias = 'article';

    let cols = {
        id: {
            type: dataTypes.INTEGER(11),
            primaryKey: true,
            autoIncrement: true,
        },
        title: {
            type: dataTypes.STRING(55),
            allowNull: false,
        },
        excerpt: {
            type: dataTypes.STRING(160),
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
        tableName: 'article',
    }

    const Article = sequelize.define(alias, cols, config);

        Article.associate = function (models){
        
        Article.belongsTo(models.user, {
            as: "user",
            foreignKey: "user_id"
        })


        }

    return Article;
}