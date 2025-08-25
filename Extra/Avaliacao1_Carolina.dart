import 'dart:io';

//Dicionarios
Map <String, double> produtoValor = {'caderno': 10, 'lapis': 1.25, 'mochila':52.90, 'caneta':2.0, 'livro':22.0};
Map <String, int> produtoQuantidade = {'caderno': 20, 'lapis': 80, 'mochila': 5, 'caneta': 50, 'livro': 32};
Map <String, int> carrinho = {};

double valorFinal = 0;

void main(){
  print("Bem vindo a papelaria da Carol!!");

  //Dados do cliente
  stdout.write("Digite seu nome: ");
  String? nome = stdin.readLineSync();

  while (nome == null || nome.trim().isEmpty) {
    stdout.write("Invalido. Digite seu nome: ");
    nome = stdin.readLineSync();
  }

  stdout.write("Digite seu CPF: ");
  String? cpf = stdin.readLineSync();

  while (cpf == null || cpf.trim().isEmpty) {
    stdout.write("Invalido. Digite seu cpf: ");
    cpf = stdin.readLineSync();
  }

  //Loop para comprar
  while(true){
    stdout.write("Você deseja adicionar produto no carrinho(s/n): ");
    String? escolha = stdin.readLineSync();
    print("");

    if (escolha == 's'){
      print("Esses são os produtos: ");
      listarProdutos();

      stdout.write("Digite o nome do produto que deseja adicionar: ");
      String? produtoEscolhido = stdin.readLineSync(); 

      if (produtoEscolhido != null && produtoValor.containsKey(produtoEscolhido)){
        stdout.write("Qual a quantidade que deseja: ");
        int quantidadeEscolhida = int.parse(stdin.readLineSync()!);

        quantidadeEscolhida = verificarEstoque(produtoEscolhido, quantidadeEscolhida);

        //adiciona o produto e quantidade ao carrinho
        carrinho[produtoEscolhido] = quantidadeEscolhida;

        //reduz o estoquue
        produtoQuantidade[produtoEscolhido] = produtoQuantidade[produtoEscolhido]! - quantidadeEscolhida;

        //soma o valor
        valorFinal += produtoValor[produtoEscolhido]! * quantidadeEscolhida;
      }
      else{
        print("Invalido!!!");
      }
    }
    else if(escolha == 'n'){
      //escolha a forma de pagamento
      print("Compra finalizada\n");
      print("Total: $valorFinal");

      print("Escolha a forma de pagamento: \n1- Dinheiro \n2- Pix(10% de desconto) \n3- Cartao de crédito(10% de juros) \n4- Cartao de débito");
      int escolhaPagamento = int.parse(stdin.readLineSync()!);

      while(escolhaPagamento > 4 || escolhaPagamento < 1){
        print("Escolha a forma de pagamento: \n1- Dinheiro \n2- Pix(10% de desconto) \n3- Cartao de crédito(10% de juros) \n4- Cartao de débito");
        escolhaPagamento = int.parse(stdin.readLineSync()!);
      }

      double dinheiro = 0;
      double troco = 0;

      if(escolhaPagamento == 1){
        stdout.write("Qual valor que você ira pagar em dinheiro: ");
        dinheiro = double.parse(stdin.readLineSync()!);

        if(dinheiro > valorFinal){
          troco = dinheiro - valorFinal;
        }
      }

      //recibo da compra
      recibo(nome, cpf, valorFinal, escolhaPagamento, dinheiro, troco);

      break;
    }
    else{
      print("Escolha não aceita");
    }
  }

}

//listar os produtos da papelaria
void listarProdutos(){
  for (String produto in produtoValor.keys) {
    print('$produto R\$${produtoValor[produto]}');
  }
  print("");
}

//verificar o a quantidade do estoque
int verificarEstoque(String produtoEscolhido, int quantidadeEscolhida) {
  int estoque = produtoQuantidade[produtoEscolhido]!;

  while (quantidadeEscolhida > estoque || quantidadeEscolhida <= 0){
    print("Invalido! No momento existe $estoque em estoque");
    stdout.write("Escolha outra quantidade que deseja: ");
    quantidadeEscolhida = int.parse(stdin.readLineSync()!);
  }

  return quantidadeEscolhida;
}

//recibo da compra
void recibo(String nome, String cpf, double valorFinal, int escolhaPagamento, double dinheiro, double troco){
  print("-----------------------------------------");
  print("Nota fiscal da Papelaria da Carol");

  print("Cliente: $nome \nCFP: $cpf \n");

  //mostra o carrinho
  for (String produto in carrinho.keys) {
    double totalProduto = carrinho[produto]! * produtoValor[produto]!;

    print('$produto ----------------- ${carrinho[produto]} x R\$${produtoValor[produto]} = $totalProduto');
  }

  print("");
  print("Total dos produtos: $valorFinal");
  
  //metodo de pagamento
  switch(escolhaPagamento){
    case 1:
      print("Metodo de pagamento - dinheiro");
      print("Total pago em dinheiro: $dinheiro");
      print("Troco: $troco");
      break;
    case 2:
      double desconto = valorFinal * 0.10;
      valorFinal -= desconto;

      print("Metodo de pagamento - Pix");
      print("Desconto: $desconto");
      print("Total com desconto: $valorFinal");
      break;
    case 3:
      double juros = valorFinal * 0.10;
      valorFinal += juros;

      print("Metodo de pagamento - cartão de credito");
      print("Valor do juros: $juros");
      print("Total com juros: $valorFinal");
      break;

    case 4:
      print("Metodo de pagamento - cartão de debito");
  }  

  print("\n Obrigada volte sempre!!!!!!!!!!!!!");

  print("-----------------------------------------");

}