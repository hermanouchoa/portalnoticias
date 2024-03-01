function NoticiasDAO(connection) {
    this._connection = connection;
}

NoticiasDAO.prototype.getNoticias = function(callback) {
    this._connection.query('select * from noticias order by dt_noticia desc', callback);
}

NoticiasDAO.prototype.getNoticia = function (id_noticia, callback) {
    this._connection.query('select * from noticias where id_noticia = '+id_noticia.id_noticia, callback);
}

NoticiasDAO.prototype.salvarNoticia = function (noticia, callback) {
    this._connection.query('insert into noticias set ? ', noticia, callback);
}

NoticiasDAO.prototype.get5UltimasNoticias = function (callback) {
    this._connection.query('select * from noticias n order by n.dt_noticia desc limit 5', callback)
}

module.exports = function () {
    return NoticiasDAO;
}