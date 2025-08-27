//vazio é nao ter nada e null é quando tem a estrutura

// .trim() -> ignora espaços vazios
// .isEmpty() -> é vazio

//Try -> tente isso 
//catch -> pegue o erre na variavel 'e'
//on -> especificar o erro
// finally -> idenpedente do que aconteça mostra

//RangeError -> indice invalido
//FormatExeption -> converter valores invalidos

import 'dart:io';

void main() {
  print("Digite seu nome");
  String? nome = stdin.readLineSync();

  if (nome == null || nome.trim().isEmpty) {
    print("Null data");
  } else {
    print("Ok $nome");
  }

  try {
    print("Digite sua idade");
    int age = int.parse(stdin.readLineSync()!);
    print(age);
  } on FormatException {
    print("só numeros");
  } on RangeError {
    print("erro range");
  } catch (e) {
    print('Esse erro: $e');
  }finally{
    print("programa finalizado");
  }
}
