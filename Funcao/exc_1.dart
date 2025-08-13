import 'dart:io';

void main(){

  stdout.write("Qual valor do produto: ");
  double preco = double.parse(stdin.readLineSync()!);

  stdout.write("Qual valor da % do desconto: ");
  double desconto = double.parse(stdin.readLineSync()!);

  calcularDesconto(preco, desconto);

}


void calcularDesconto(double preco, double desconto){
  double valorFinal = preco - (preco * (desconto / 100));
  print("Valor final: $valorFinal");

}