module.exports.login = function (application, req, res) {
    res.render("seguranca/login");
}

module.exports.autenticar = function (application, req, res) {
    var dadosForm = req.body;
    // terminar tratamento de dados do formulário
    //req.
}