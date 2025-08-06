import 'dart:io';

void main(){

//1  
  double nota = 0;
  double media = 0;

  print('Digite 5 notas!');

  for(int i = 0; i<5; i++){
    print('digite a sua nota: ');
    nota = double.parse(stdin.readLineSync()!);
    media += nota;
  }

  media = media /5;

  if(media >= 5){
    print('Aprovado');
  }
  else if(media < 4){
    print('Reprovado');
  }
  else{
    print('Recuperação');
  }

//2

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




