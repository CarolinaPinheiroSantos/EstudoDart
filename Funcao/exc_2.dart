import 'dart:io';

void main(){
  stdout.write("Qual sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  if(ehMaiorIdade(idade)){
    print("Voce é maior de idade, pode tirar carta!!");
  }
  else{
    print("Voce é menor de idade, tem que dormi 22h😠");
  }

}

bool ehMaiorIdade(int idade){
   return idade >= 18;
}