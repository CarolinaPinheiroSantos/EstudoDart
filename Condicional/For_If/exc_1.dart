import 'dart:io';

void main(){

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
}