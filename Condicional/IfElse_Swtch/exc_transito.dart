import 'dart:io';

void main(){
  print('Digite o nome do infrator:');
  String? nome = stdin.readLineSync();

  print('Digite a velocidade que o veiculo estava:');
  int velocidade = int.parse(stdin.readLineSync()!);

  int valorMulta = 0;
  double valorPagar = 0;

  if(velocidade <= 60){
    print('Sem infração');
    return;

  }else if(velocidade >= 61 && velocidade <= 80){
    print('Infração leve');
    valorMulta = 500;

  }else if(velocidade >= 81 && velocidade <= 100){
    print('Infração media');
    valorMulta = 1000;

  }else{
    print('infracao grave');
    valorMulta = 1500;
  }

  print('1 - pagar a vista(10% de desconto) \n2 - parcelar 2x(sem juros)\n3- parcelar em 3x(com 10% de juros)');
  int escolha = int.parse(stdin.readLineSync()!);

  switch(escolha){
    case 1: 
    double valorPagar = valorMulta - (valorMulta * 0.10);
    print("O motorista $nome estava a $velocidade km/h e ira pagar uma multa de $valorMulta a vista e com desconto ficará $valorPagar");
    break;

    case 2:
    valorPagar = valorMulta / 2;
    print("O motorista $nome estava a $velocidade km/h e ira pagar uma multa de $valorMulta em 2x de $valorPagar sem juros");
    break;

    case 3:
    double valorPagar = (valorMulta + (valorMulta * 0.10)) / 3;
    print("O(a) motorista $nome estava a $velocidade km/h e ira pagar uma multa de $valorMulta em 3x de $valorPagar com juros");
    break;

    default:
    print('opção invalido');
  }

}