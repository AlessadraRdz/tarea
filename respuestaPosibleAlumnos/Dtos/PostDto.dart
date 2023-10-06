//clase postdto define las variables a recibir y mos declara para que tengan
//un valor mediante el metodo get
class PostDto {
  final String _title;
  final String _body;

//constructor
  PostDto(this._title, this._body);

  String get getTitle => _title;
  String get getBody => _body;
}
