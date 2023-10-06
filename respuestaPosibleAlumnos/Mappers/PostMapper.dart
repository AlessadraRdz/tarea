import '../Bulders/PostBuilder.dart';
import '../Dtos/PostDto.dart';
import '../Models/Post.dart';

//calse de tipo abstacto que mapea en el dto en los metodos donde se adquirieron
//los valores de las variables
abstract class PostMapper {
  PostDto mapperPost(Post data) =>
      PostDtoBuilder().setTitle(data.title).setBody(data.body).build();

  //lista tipo postdto que realiza un mapeo dinamico y regresa un array
  //de posts donde de la clase postdtobuilder trae el title y body y lo muestra como
  //un iterable
  List<PostDto> mapperListPost(List<dynamic> arrayPosts) {
    return arrayPosts
        .map((elementPost) => PostDtoBuilder()
            .setTitle(elementPost.title)
            .setBody(elementPost.body)
            .build())
        .toList();
  }
}
