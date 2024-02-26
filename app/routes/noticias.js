module.exports = function (applicantion) {

    applicantion.get('/noticias', function (req, res) {    

        var connection = applicantion.config.dbConnection();
        var noticiasModel = applicantion.app.models.noticiasModel;

        noticiasModel.getNoticias(connection, function (error, result) {
            res.render("noticias/noticias", 
            {
                noticias: result
            });
        });

        
    });    
}