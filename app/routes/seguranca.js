module.exports = function (application) {
    application.get('/login', function (req, res) {    
        application.app.controllers.seguranca.login(application, req, res);        
    });    

    application.post('/autenticar', function (req, res) {
        application.app.controllers.seguranca.autenticar(application, req, res);
    })

    application.get('/sair', function (req, res) {
        application.app.controllers.seguranca.sair(application, req, res);
    })
}