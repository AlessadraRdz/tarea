import 'Controllers/PostController.dart';
import 'Views/PostView.dart';

//aqui manda a llamar a la vista el cual realiza el proceso de mostrar los metodos de forma sincrona
//segun su funcion todos o uno
main() async {
  final view = PostView();
  view.printFindByPost(PostController(), 1);
  view.printAllPost(PostController());
}
