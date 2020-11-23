import 'dart:io';

List<Map<String, dynamic>> cadastros = [];

cadastroPessoas() {
  bool condicao = true;

  while (condicao) {
    print("=====DIGITE UM COMANDO=====");
    String comando = stdin.readLineSync();
    if (comando == "sair") {
      print("=====PROGRAMA FINALIZADO=====");
    } else if (comando == "cadastro") {
      print("\x1B[2J\x1B[0;0H");
      cadastrar();
    } else if (comando == "imprimir") {
      print(cadastros);
    } else {
      print("=====ESSE COMANDO NÃO EXISTE=====");
    }
  }
}

cadastrar() {
  Map<String, dynamic> cadastro = {};
  print("======Digite seu nome======");
  cadastro["nome"] = stdin.readLineSync();

  print("======Digite sua idade======");
  cadastro["idade"] = stdin.readLineSync();

  print("======Digite seu estado======");
  cadastro["estado"] = stdin.readLineSync();

  print("======Digite sua cidade======");
  cadastro["cidade"] = stdin.readLineSync();
  cadastros.add(cadastro);
}
