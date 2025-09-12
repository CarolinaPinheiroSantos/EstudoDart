import 'dart:io'

List<Animal> listaAnimais = [];

void main(){

}

void Menu(){
  print("Bem vindo ao ZOOMANGE");
  print("Escolha uma opção do menu:");
  print("1- Cadastrar novo animal \n2- Listar todos os animais \n3- Editar dados de um animal \n4 - Remover Animal");
  int opcao = int.parce(stdin.readLineSync()!);

  switch (opcao){
    case 1:
    print("Qual animal voce quer adicional \n1-Girafa \n2-Hamster \n3-Lontra");
    int opcao_animal = int.parce(stdin.readLineSync()!);

    switch (opcao_animal){
      case 1:
      print("Digite o nome: ");
      String? nome = stdin.readLineSync();

      print("Digite a idade: ");
      int idade = int.parce(stdin.readLineSync()!);

      print("Digite a genero: ");
      String? genero = stdin.readLineSync();

      print("Digite a quantidade de mancha: ");
      int quantidade_manchas = int.parce(stdin.readLineSync()!);
    
      Girafa novoAnimal = Girafa(nome!, idade, genero!, quantidade_manchas);
      listaAnimais.add(novoAnimal);
      
      break;

      case 2:
      print("Digite o nome: ");
      String? nome = stdin.readLineSync();

      print("Digite a idade: ");
      int idade = int.parce(stdin.readLineSync()!);

      print("Digite a genero: ");
      String? genero = stdin.readLineSync();

      print("Ele se assuta(s/n): ");
      String? susto = stdin.readLineSync();

      Hamster novoAnimal = Hamster(nome!, idade, genero!, quantidade_manchas);
      listaAnimais.add(novoAnimal);
    }
  }
}

void controle(){
  
}