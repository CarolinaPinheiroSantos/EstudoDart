import 'dart:io';

Map <String, double> produtoValor = {'caderno': 10, 'lápis': 1.25, 'mochila':52.90, 'caneta':2.0, 'livro':22.0};
Map <String, int> produtoQuantidade = {'caderno': 20, 'lápis': 80, 'mochila': 5, 'caneta': 50, 'livro': 32};
Map <String, int> carrinho = {};
double valorFinal = 0;

void main(){
  print("Bem vindo a papelaria da Carol!!");

  stdout.write("Digite seu nome: ");
  String? nome = stdin.readLineSync();

  while (nome == null || nome.trim().isEmpty) {
    stdout.write("Invalido. Digite seu nome: ");
    String? nome = stdin.readLineSync();
  }

  stdout.write("Digite seu CPF: ");
  String? cpf = stdin.readLineSync();

  while (cpf == null || cpf.trim().isEmpty) {
    stdout.write("Invalido. Digite seu cpf: ");
    String? cpf = stdin.readLineSync();
  }

  while(true){
    stdout.write("Você deseja adicionar produto no carrinho(s/n): ");
    String? escolha = stdin.readLineSync();

    if (escolha == 's'){
      print("Esses são os produtos");
      listarProdutos();

      stdout.write("Digite o produto que deseja adicionar: ");
      String? produtoEscolhido = stdin.readLineSync(); 

      if (produtoEscolhido != null && produtoValor.containsKey(produtoEscolhido)){
        stdout.write("Qual a quantidade que deseja: ");
        int quantidadeEscolhida = int.parse(stdin.readLineSync()!);

        quantidadeEscolhida = verificarEstoque(produtoEscolhido, quantidadeEscolhida);

        carrinho[produtoEscolhido] = quantidadeEscolhida;

        produtoQuantidade[produtoEscolhido] = produtoQuantidade[produtoEscolhido]! - quantidadeEscolhida;

        valorFinal += produtoValor[produtoEscolhido]! * quantidadeEscolhida;
      }
      else{
        print("Invalido!!!");
      }
    }
    else if(escolha == 'n'){
      print("Compra finalizada");

      for (double valor in carrinho.values) {
        valorFinal += valor;
        print("Total: $valorFinal");
      }

      print("\nEscolha a forma de pagamento: \n1- Dinheiro \n2- Pix(10% de desconto) \n3- Cartao de crédito(10% de juros) \n4- Cartao de débito");
      int escolhaPagamento = int.parse(stdin.readLineSync()!);

      while(escolhaPagamento > 3 || escolhaPagamento < 1){
        print("Escolha a forma de pagamento: \n1- Dinheiro \n2- Pix(10% de desconto) \n3- Cartao de crédito(10% de juros) \n4- Cartao de débito");
        escolhaPagamento = int.parse(stdin.readLineSync()!);
      }

      if(escolhaPagamento == 1)
        stdout.write("Qual valor que você ira pagar em dinheiro: ");
        double dinheiro = int.parse(stdin.readLineSync()!);

        if(dinheiro > valorFinal){
          double troco = dinheiro - valorFinal;
        }
        

      recibo(nome, cpf, valorFinal, escolhaPagamento, dinheiro, troco);

      break;
    }
    else{
      print("Escolha não aceita");
    }
  }

}

void listarProdutos(){
  for (String produto in produtoValor.keys) {
    print('Produto: $produto, Valor: ${produtoValor[chave]}');
  }
}

int verificarEstoque(String produtoEscolhido, int quantidadeEscolhida) {
  int estoque = produtoQuantidade[produtoEscolhido]!;

  while (quantidadeEscolhida > estoque || quantidadeEscolhida <= 0){
    
    print("Invalido! No momento existe $estoque");
    stdout.write("Escolha outra quantidade que deseja: ");
    int quantidadeEscolhida = int.parse(stdin.readLineSync()!);
  }

  return quantidadeEscolhida;
}

void recibo(String nome, String cpf, double valorFinal, int escolhaPagamento, double dinheiro, double troco){
  print("Nota fiscal da Papela da Carol");

  print("Cliente: $nome \nCFP: $cpf \n");

  for (String produto in carrinho.keys) {
    print('Produto: $produto x Quantidade: ${carrinho[produto]}');
  }

  print("-----------------------------------------");
  print("Total dos produtos: $valorFinal");
  
  switch(escolhaPagamento){
    case 1:
        print("Total a pagar em dinheiro: $dinheiro");
        print("Troco: $troco");
      break;
    case 2:
      double desconto = valorFinal * 0.10;
      valorFinal -= desconto;

      print("Desconto: $desconto");
      print("Total com desconto: $valorFinal");
      break;
    case 3:
      double juros = valorFinal * 0.10;
      valorFinal += juros;

      print("Valor do juros: $juros");
      print("Total com juros: $valorFinal");
      break;
  }  

  print("Obrigada volte sempre!!!!!!!!!!!!!");

}

//-------------------------------------------------------------------------------------
double mostrarCarrinho(){
  for (String produto in carrinho.keys) {
    print('Produto: $produto, Quantidade: ${carrinho[produto]}');
  }

  for (double valor in carrinho.values) {
    valorFinal += valor;
  }

  return valorFinal;
}


void formaPagamento(){
    print("\nEscolha a forma de pagamento: \n1- Dinheiro \n2- Pix(10% de desconto) \n3- Cartao de crédito(10% de juros) \n4- Cartao de débito");
    int escolhaPagamento = int.parse(stdin.readLineSync()!);

    while(escolhaPagamento > 3 || escolhaPagamento < 1){
      print("Escolha a forma de pagamento: \n1- Dinheiro \n2- Pix(10% de desconto) \n3- Cartao de crédito(10% de juros) \n4- Cartao de débito");
      escolhaPagamento = int.parse(stdin.readLineSync()!);
    }

    switch(escolhaPagamento){
      case 1:
        stdout.write("Qual valor que você ira pagar em dinheiro: ");
        int dinheiro = int.parse(stdin.readLineSync()!);

        if(dinheiro > valorFinal){
          int troco = dinheiro - valorFinal;
        }
        break;
      case 2:
          valorFinal -= valorFinal * 0.10;
        break;
      case 3:
        valorFinal += valorFinal * 0.10;
      case 4:
    }  
}