import 'dart:io';

void main(){
    stdout.write("Digirte seu nome: ");
    String? Nome = stdin.readLineSync();


    while (Nome == null || Nome.trim().isEmpty) {
        print("Erro. Tente novamente");
        stdout.write("Digirte seu nome: ");
        String? Nome = stdin.readLineSync();
    }

    print(Nome);
}