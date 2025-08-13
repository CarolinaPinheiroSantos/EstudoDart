import 'dart:io';

void main(){
  Map<String, int> carrinho = {};

  print("Bem vindo ao mercado da Carol!!!!");

  stdout.write("Primeiro digite seu CPF: ");
  String? CPF = stdin.readLineSync();

  print("Seu CFP é $CPF");

  double valorTotal = 0; 

  while(true){
    stdout.write("Deseja add produto(s/n): ");
    String? escolha = stdin.readLineSync();

    if (escolha == 's'){
      stdout.write("Digite o produto que deseja adicionar: ");
      String? produto = stdin.readLineSync(); 
      
      stdout.write("Digite o valor do produto: ");
      int valor = int.parse(stdin.readLineSync()!);

      valorTotal += valor;
      
      carrinho[produto!] = valor;
    }
    else if(escolha == 'n'){
      print("\nSeu carrinho ficou assim: ");
      carrinho.forEach((i, x) => print('$i R\$$x'));

      print("Total: R\$$valorTotal");
      break;
    }
    else{
      print("Escolha não aceita");
    }
  }
  
  if(valorTotal != 0){
    print("\nEscolha a forma de pagamento: \n1- A vista(10% de desconto \n2- Parcelado no cartão(10% de juros) \n3-Fiado(15% a mais na proxima compra)");
    int escolhaPagamento = int.parse(stdin.readLineSync()!);      

    while(escolhaPagamento > 3 || escolhaPagamento < 1){
      print("Escolha não aceita. Escolha a forma de pagamento: \n1- A vista(10% de desconto) \n2- Parcelado no cartão(10% de juros) \n3- Fiado(15% a mais na proxima compra)");
      escolhaPagamento = int.parse(stdin.readLineSync()!);
    }

    switch(escolhaPagamento){
      case 1:
        valorTotal -= valorTotal * 0.10;
        break;
      case 2:
        valorTotal += valorTotal * 0.10;   
        break;
      case 3:
        valorTotal += valorTotal * 0.15;
        print("vai ficar para a proxima compra,");
    }   

    print("O valor final de acordo com a opção $escolhaPagamento ficou de $valorTotal reais");
  }

  print("Volte sempre!!😉");
}