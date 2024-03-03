module.exports.login = function (application, req, res) {
    if (!req.session.autorizado) {
        res.render("seguranca/login", {validacao: [{msg: "Usuário tem que logar"}]});        
    }
    
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

    var connection = application.config.dbConnection();
    var usuarioDAO = new application.app.models.UsuariosDAO(connection);

    usuarioDAO.autenticar(dadosForm, function (error, result) {

        if (result[0] != undefined) {
            req.session.autorizado = true;    
            req.session.usuario = result[0];
        } else {
            req.session.autorizado = false;
        }
        
        if (req.session.autorizado) {
            //res.send('Usuário encontrado');
            res.redirect('/')
        } else {
            res.redirect('/login')
        }

    });
}