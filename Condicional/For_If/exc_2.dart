import 'dart:io';

void main(){
    double salario = 0;
  double salarioTotal = 0;
  double salarioMedia = 0;

  print('Digite seu nome:');
  String? nome = stdin.readLineSync();

  print('Digite 3 ulimos salarios!');

  for(int i = 0; i<3; i++){
    print('digite seu salario: ');
    if (salario < 0){
      print('digite numero positivo:');
      salario = double.parse(stdin.readLineSync()!);
    } 
    else{
      salario = double.parse(stdin.readLineSync()!);
    }

    salarioTotal += salario;
  }
  
  salarioMedia = salarioTotal / 3;
  print('Você $nome tem a media salarial de $salarioMedia reais');
  if (salarioMedia < 1000){
    print('Você precisa mudar de emprego');
  }
  else if(salarioMedia >= 2000 && salarioMedia <= 3000){
    print('Ta ganhando bem em');
  }
  else{
    print('Voce é bem rico!!');
  }

}