module.exports.login = function (application, req, res) {
    res.render("seguranca/login", {validacao: {}});
}

module.exports.autenticar = function (application, req, res) {
    var dadosForm = req.body;
    
    req.assert('usuario', 'Usuário deve ser informado').notEmpty();
    req.assert('senha', 'Senha deve ser informada').notEmpty();
    
    var erros = req.validationErrors();

    if (erros) {
        res.render("seguranca/login",{validacao: erros});
        return;
    }

    res.send('tudo ok!!!');
}