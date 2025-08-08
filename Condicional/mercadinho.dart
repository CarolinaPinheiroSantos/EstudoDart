import 'dart:io';

void main(){
  Map <String, int> produtos = {'banana':10, 'maça':5, 'dolritos':15, 'nescau':18};
  Map<String, int> carrinho = {};

  print("Bem vindo ao mercado da Carol!!!!");
  produtos.forEach((i, x) => print('$i está R\$$x'));

  stdout.write("Primeiro digite seu CPF: ");
  String? CFP = stdin.readLineSync();

  while(true){
    stdout.write("Desejaa add produto(s/n): ");
    String? escolha = stdin.readLineSync();

    if (escolha == 's'){
      stdout.write("Digite o produto que deseja adicionar: ");
      String? produto = stdin.readLineSync(); 
      
      stdout.write("Digite o valor do produto: ");
      String? valorr = stdin.readLineSync(); 
      int valor = int.parse(valorr!);
      
      carrinho[produto!] = valor;
    }
    else{
      carrinho.forEach((i, x) => print('$i, $x'));
      break;
    }
  }
}