//se crea la clase post la cual es nuestro modelo y no se modificaran las variables dentro de el
//ya que no es necesario con los dto para la captura de la informacion
class Post {
  //define las variables
  final int userId;
  final int id;
  final String title;
  final String body;

  Post(
      //variables requeridas y declaradas
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

//metodo factory realiza un mapeo de la indormacion de tipo post, regresando el mismo valor depues de la busqueda
//constructor de fabrica
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      //define las variables que tiene la clase post donde almacenara los valores que se le den
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
