import 'package:flutter/foundation.dart';
import 'package:pmfilmes/dominio/genero.dart';

class GeneroViewModel extends ChangeNotifier {
  final List<Genero> generos;
  late Genero _genero; /* _ objeto privada */

  GeneroViewModel({
    required this.generos,
  });

  void selecionaGenero(Genero genero) {
    /* recupera um GeneroViewModel do provider com o estado
    compartilhado na aplicação */
    _genero = genero;
    notifyListeners();
  }

  //Fecha a tela atual.
  Genero get generoSelecionado => _genero;
}
