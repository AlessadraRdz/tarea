import '../Models/Post.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

//crea un mixin, inyeccion de datos
//con el fetchPost se define una funcion asincrona que realiza una solicitud
//http y devuelve un objero future que sera de tipo post en caso de
//no cumplir mostrara un mensaje de error
mixin PostMixin {
  //toma la variable urlString de tipo string
  Future<Post> fetchPost(String urlString) async {
    //realiza la solicitud, utilizando http y con el await espera a que se complete la solicitud para continuar
    final response = await http.get(Uri.parse(urlString));

//verifica que la respuesta sea exitosa
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return Post.fromJson(
          data); //crea el objeto pors si es exitosa la respuesta y los convierte a json
    } else {
      throw Exception('Failed to load post');
    }
  }

//realiza el mismo procedimiento que el de arriba a excepsion de que utiliza
//uri.parse el cual realiza la solicitud a http, toma la variable de tipo string y procesa
//que continue si es exitosa o lance un error
  Future<List<Post>> fetchAllPost(String urlString) async {
    final response = await http.get(Uri.parse(urlString));

    if (response.statusCode == 200) {
      final List<dynamic> resultSet = json.decode(response.body);

      // Usamos map para convertir cada elemento en resultSet a un objeto Post
      final List<Post> results = resultSet.map((element) {
        final Map<String, dynamic> data = element;
        return Post.fromJson(
            data); //procesa la respesta json que contiene una lista de objetos tipo post
      }).toList();

      return results;
    } else {
      throw Exception('Failed to load post');
    }
  }
}
