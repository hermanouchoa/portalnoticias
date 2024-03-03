function UsuariosDAO(connection) {
    this._connection = connection;
}

UsuariosDAO.prototype.autenticar = function (usuario, callback) {
    this._connection.query('select * from usuarios where usuario = "'+usuario.usuario+'" and senha = "'+usuario.senha+'" ', callback);
}

module.exports = function () {
    return UsuariosDAO;
}