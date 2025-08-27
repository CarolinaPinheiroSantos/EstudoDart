import 'dart:io';

void main(){
  while(true){
    double valor;
    try {
      print("Digite valor da compra: ");
      valor = double.parse(stdin.readLineSync()!);

      while (valor == null || valor.trim().isEmpty) {
        print("Erro. Tente novamente");
        stdout.write("Digite valor da compra: ");
        valor = stdin.readLineSync();
      }
      break;

    } on FormatException {
      stdout.write("Invalido.");
    }
  }

  print("Escolha a forma de pagamento: \n1- Dinheiro \n2- Cartao de debito \n3- Cartao de crédito \n4- Pix");
  int escolhaPagamento = int.parse(stdin.readLineSync()!);

  while(escolhaPagamento > 4 || escolhaPagamento < 1){
    print("Escolha a forma de pagamento: \n1- Dinheiro \n2- Cartao de debito \n3- Cartao de crédito \n4- Pix");
    escolhaPagamento = int.parse(stdin.readLineSync()!);
  }

  switch(escolhaPagamento){
    case 1:
      print("Metodo de pagamento - dinheiro");
      break;
    case 2:
      print("Metodo de pagamento - cartão de debito");
      break;
    case 3:
      print("Metodo de pagamento - cartão de credito");
      break;
    case 4:
      print("Metodo de pagamento - Pix");
      break;
  }
}