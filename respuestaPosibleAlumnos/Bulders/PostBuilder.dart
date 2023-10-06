import '../Dtos/PostDto.dart';

//crea la clase postDtoBuilder donde define las variables de tipo late
//que en el transcurso de la corridase le asignara un valor
//dos metodos set para retornar elvalor de la variable
class PostDtoBuilder {
  late String _title;
  late String _body;

  PostDtoBuilder setTitle(String title) {
    _title = title;
    return this;
  }

  PostDtoBuilder setBody(String body) {
    _body = body;
    return this;
  }

  PostDto build() {
    return PostDto(_title, _body);
  }
}
