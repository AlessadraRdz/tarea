import '../Dtos/PostDto.dart';
import '../Mappers/PostMapper.dart';
import '../DataSoruce.dart';
import '../mixins/PostMixin.dart';

//la clase postcontroller hereda de la clase postmapper y postmixin
//para tener acceso a los metodos y variables de estas
class PostController extends PostMapper with PostMixin {
  //variable edpoints tiene el valor de la url que se concatenacion
  //host (variable global)
  final endpoints = '$HOST/posts';
//toma el parametro id de tipo entero y lo devuelve en un
//objeto future que contendra un objeto postdto
  Future<PostDto> findPostById(int id) async {
    final url = '$endpoints/$id';
    try {
      final post = super.mapperPost(await Future.delayed(
          //espera un segundo utilizando future.delayed
          const Duration(seconds: 1),
          () => fetchPost(url)));
      return post; //retorna post si es correcto si no regresa el mnsj de error
    } catch (e) {
      throw Exception('Failed to find post: $e');
    }
  }

//toma el url llama a fetchallpost espera un segundo y devuelve
//el resultado mappperListPost
  Future<List<dynamic>> allPost() async {
    final url = '$endpoints/';
    try {
      final post = super.mapperListPost(await Future.delayed(
          const Duration(seconds: 1), () => fetchAllPost(url)));
      return post;
    } catch (e) {
      throw Exception('Failed to find post: $e');
    }
  }
}//esta clase utiliza los metodos de mapeo mapperPost y mapperPostList
