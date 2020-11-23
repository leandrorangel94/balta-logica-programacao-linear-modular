import 'dart:io';

List<String> produtos = [];

carrinhoCompras() {
  bool condicao = true;

  while (condicao) {
    print("=====ADICIONE UM PRODUTO=====");
    String text = stdin.readLineSync();
    if (text == "sair") {
      print("=====PROGRAMA FINALIZADO=====");
      condicao = false;
    } else if (text == "imprimir") {
      for (var i = 0; i < produtos.length; i++) {
        print("ITEM $i - ${produtos[i]}");
      }
    } else if (text == "remover") {
      remover();
    } else {
      produtos.add(text);
      print("\x1B[2J\x1B[0;0H");
    }
  }
}

imprimir() {
  for (var i = 0; i < produtos.length; i++) {
    print("ITEM $i - ${produtos[i]}");
  }
}

remover() {
  print("QUAL ITEM DA LISTA DESEJA REMOVER?");
  imprimir();
  int item = int.parse(stdin.readLineSync());
  produtos.removeAt(item);
}
