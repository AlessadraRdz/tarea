import '../Controllers/PostController.dart';

//en esta clase importa la clase postcontrolles de la carpeta controllers
//crea una clase y define que mediante un metodo ya sea se cumpla o no seguira con el proceso la muestra
//del post, el metodo se define con la funcion de buscar por uno, utiliza la variable del controlador si se es 
//necesaria
class PostView {
  void printFindByPost(PostController postController, int id) async {
    try {
      //crea una variable post que espera respuesta de la variable del controlador si se requirio
      final post = await postController.findPostById(id);
      //imprime los datos del pors title y body
      print('Post Title: ${post.getTitle}');
      print('--------------------------');
      print('Post Body: ${post.getBody}');
    } catch (e) {
      print(e);
    }
  }

//aqui el metodo aplica la misma dinamica al ser establecido, mas en vez de todos a uno es a todos
  void printAllPost(PostController postController) async {
    try {
      final listPosts = await postController.allPost();
      //imprime las listas de post, title y body
      print(listPosts);
      for (var post in listPosts) {
        print('**************************');
        print('--------------------------');
        print('Post Title: ${post.getTitle}');
        print('--------------------------');
        print('Post Body: ${post.getBody}');
      }
    } catch (e) {
      print(e);
    }
  }
}
