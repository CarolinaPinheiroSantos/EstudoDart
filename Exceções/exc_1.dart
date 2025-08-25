import 'dart:io';

void main(){
    stdout.write("Digite seu nome: ");
    String? Nome = stdin.readLineSync();


    while (Nome == null || Nome.trim().isEmpty) {
        print("Erro. Tente novamente");
        stdout.write("Digite seu nome: ");
        Nome = stdin.readLineSync();
    }

    print(Nome);
}
