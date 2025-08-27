import 'dart:io';

void main(){
  while(true){
    double valor_final;
    try {
      print("Digite valor da compra: ");
      String? valor = stdin.readLineSync();

      if (valor == null || valor.trim().isEmpty) {
        print("Erro. Tente novamente");
        continue;
      }

      valor_final = double.parse(valor);
      break;

    } on FormatException {
      print("Invalido. Digite um Numeroo!");
    }
  }

  int escolhaPagamento_final = 0;
  
  while(escolhaPagamento_final > 4 || escolhaPagamento_final < 1){
    try{
      print("Escolha a forma de pagamento: \n1- Dinheiro \n2- Cartao de debito \n3- Cartao de crédito \n4- Pix");
      String? escolhaPagamento = stdin.readLineSync();

      if (escolhaPagamento == null || escolhaPagamento.trim().isEmpty) {
        print("Erro. Tente novamente");
        print("Escolha a forma de pagamento: \n1- Dinheiro \n2- Cartao de debito \n3- Cartao de crédito \n4- Pix");
        continue;
      }

      escolhaPagamento_final = int.parse(escolhaPagamento);

    } on FormatException{
      print("Erro.");
    }


  }
  

  switch(escolhaPagamento_final){
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