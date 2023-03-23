class ApiEndPoints {
  //todo: aqui es a donde apuntamos para que eso este vivo!!
  static final String baseUrl = 'http://localhost:3000/api';
  //todo: hacemos referencia de la otra clase, para usar como una estancia de esta clase
  static _AuthEndPoints authEndpoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String registerEmail = 'microserviciosNest/register';
  final String loginEmail = 'microserviciosNest/login';
}