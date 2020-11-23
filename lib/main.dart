import 'package:estudo/src/map_cadastro.dart';
import 'src/calc_idade.dart';
import 'src/carrinho_compras.dart';
import 'src/imc.dart';

void main(List<String> arguments) {
  if (arguments[0] == 'calculo-idade') {
    calculoIdade();
  } else if (arguments[0] == 'carrinho-compras') {
    carrinhoCompras();
  } else if (arguments[0] == 'imc') {
    calculaImc();
  } else if (arguments[0] == 'cadastro') {
    cadastroPessoas();
  } else {
    print('Este programa não existe!');
  }
}
