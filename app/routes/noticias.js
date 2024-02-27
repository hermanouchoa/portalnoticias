module.exports = function (applicantion) {

    applicantion.get('/noticias', function (req, res) {    

        var connection = applicantion.config.dbConnection();
        var noticiasModel = new applicantion.app.models.NoticiasDAO(connection);

        noticiasModel.getNoticias(function (error, result) {
            res.render("noticias/noticias", 
            {
                noticias: result
            });
        });

        
    });    
}