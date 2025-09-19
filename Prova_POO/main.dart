import 'dart:io';
import 'zoomange.dart';

List<Animal> listaAnimais = [];

void main(){
  Menu();

  Relatorio(listaAnimais);

}

void Relatorio(List<Animal> listaAnimais){
  
  print("-------Relatorio Zoomange--------");
  for (int i = 0; i < listaAnimais.length; i++) {
    Animal animal = listaAnimais[i];
    print("Nome: ${animal.nome}");
    print("Porte: ${animal.porte.name}");
    print("Idade: ${animal.getIdade}");
    print("Gênero: ${animal.genero}");

    if (animal is Girafa) {
      print("Quantidade de manchas: ${animal.quantidade_manchas}");
    } else if (animal is Hamster) {
      print("Se assusta: ${animal.susto}");
    } else if (animal is Lontra) {
      print("Tamanho: ${animal.tamanho} m");
    }
    print("                               ");
  }
}

void Menu(){
  print("Bem vindo ao ZOOMANGE");

  while(true){

  print("1- Cadastrar novo animal \n2- Listar todos os animais \n3- Editar dados de um animal \n4- Remover Animal \n5- Filtro \n6- Sair");
  print("Escolha uma opção do menu:");
  int opcao = int.parse(stdin.readLineSync()!);
  print("");

  switch (opcao){
    // cadastrar animal
    case 1:
    print("Qual animal voce quer adicional \n1-Girafa \n2-Hamster \n3-Lontra");
    int opcao_animal = int.parse(stdin.readLineSync()!);
    print("");

    switch (opcao_animal){
    // Cadastrar girafa
      case 1:
      print("Digite o nome: ");
      String nome = stdin.readLineSync()!;

      print("Digite a idade: ");
      int idade = int.parse(stdin.readLineSync()!);

      print("Digite a genero: ");
      String genero = stdin.readLineSync()!;

      print("Digite o porte(pequeno, medio ou grande): ");
      String porte = stdin.readLineSync()!.toLowerCase();

      Porte? porteFinal;

      switch(porte){
        case "pequeno":
          porteFinal = Porte.pequeno;
        case "medio":
          porteFinal = Porte.medio;
        case "grande":
          porteFinal = Porte.grande;
        default:
          print("Porte invalido");
      }

      print("Digite a quantidade de mancha: ");
      int quantidade_manchas = int.parse(stdin.readLineSync()!);
    
      Girafa novoAnimal = Girafa(nome:nome, genero:genero, porte: porteFinal, quantidade_manchas: quantidade_manchas);
      novoAnimal.setIdade = idade;
      listaAnimais.add(novoAnimal);

      print("                               ");
      novoAnimal.Comer(nome);
      novoAnimal.emitirSom(nome);
      
      break;

      // Cadastrar Hamster
      case 2:
      print("Digite o nome: ");
      String nome = stdin.readLineSync()!;

      print("Digite a idade: ");
      int idade = int.parse(stdin.readLineSync()!);

      print("Digite a genero: ");
      String genero = stdin.readLineSync()!;

      print("Digite o porte(pequeno, medio ou grande): ");
      String porte = stdin.readLineSync()!.toLowerCase();
      Porte? porteFinal;

      switch(porte){
        case "pequeno":
          porteFinal = Porte.pequeno;
        case "medio":
          porteFinal = Porte.medio;
        case "grande":
          porteFinal = Porte.grande;
        default:
          print("Porte invalido");
      }

      print("Ele se assuta(s/n): ");
      String susto = stdin.readLineSync()!;

      Hamster novoAnimal = Hamster(nome:nome, genero:genero, porte: porteFinal, susto: susto);
      novoAnimal.setIdade = idade;
      listaAnimais.add(novoAnimal);

      print("                               ");
      novoAnimal.Comer(nome);
      novoAnimal.emitirSom(nome);

      break;

      // cadastrar lontra
      case 3:
      print("Digite o nome: ");
      String nome = stdin.readLineSync()!;

      print("Digite a idade: ");
      int idade = int.parse(stdin.readLineSync()!);

      print("Digite a genero: ");
      String genero = stdin.readLineSync()!;

      print("Digite o porte(pequeno, medio ou grande): ");
      String porte = stdin.readLineSync()!.toLowerCase();

      Porte? porteFinal;

      switch(porte){
        case "pequeno":
          porteFinal = Porte.pequeno;
        case "medio":
          porteFinal = Porte.medio;
        case "grande":
          porteFinal = Porte.grande;
        default:
          print("Porte invalido");
      }

      print("Digite o tamanho em cm: ");
      double tamanho = double.parse(stdin.readLineSync()!);

      Lontra novoAnimal = Lontra(nome:nome, genero:genero, porte: porteFinal, tamanho:tamanho);
      novoAnimal.setIdade = idade;
      listaAnimais.add(novoAnimal);

      print("                               ");
      novoAnimal.Comer(nome);
      novoAnimal.emitirSom(nome);

      break; 
    }

    // listar animais
    case 2:
    Relatorio(listaAnimais);
    break;

    // Editar animais
    case 3:
    for (int i = 0; i < listaAnimais.length; i++) {
      print("$i - ${listaAnimais[i].nome}");
    }
    print("Digite o numero do animal que deseja editar: ");
    int indice_editar = int.parse(stdin.readLineSync()!);

    Animal animalEscolhido = listaAnimais[indice_editar];

    print("Digite o nome: ");
    animalEscolhido.nome = stdin.readLineSync()!;

    print("Digite a idade: ");
    animalEscolhido.setIdade = int.parse(stdin.readLineSync()!);

    print("Digite a genero: ");
    animalEscolhido.genero = stdin.readLineSync()!;

    print("Digite o porte(pequeno, medio ou grande): ");
    String porte = stdin.readLineSync()!;

    switch(porte){
      case "pequeno":
        animalEscolhido.porte = Porte.pequeno;
      case "medio":
        animalEscolhido.porte = Porte.medio;
      case "grande":
        animalEscolhido.porte = Porte.grande;
      default:
        print("Porte invalido");
    }

    if (animalEscolhido is Girafa) {
      print("Digite a quantidade de mancha: ");
      animalEscolhido.quantidade_manchas = int.parse(stdin.readLineSync()!);

    } else if (animalEscolhido is Hamster) {
      print("Ele se assuta(s/n): ");
      animalEscolhido.susto = stdin.readLineSync()!;

    } else if (animalEscolhido is Lontra) {
      print("Digite o tamanho: ");
      animalEscolhido.tamanho = double.parse(stdin.readLineSync()!);
    }

    // apagar animal
    case 4:
    for (int i = 0; i < listaAnimais.length; i++) {
      print("$i - ${listaAnimais[i].nome}");
    }
    print("Digite o numero do animal que deseja excluir: ");
    int indiceAnimal = int.parse(stdin.readLineSync()!);

    listaAnimais.removeAt(indiceAnimal);

    // filtar por especie
    case 5:
    print("Digite a especie que deseja filtrar(girafa, hamster, lontra): ");
    String filtroAnimal = stdin.readLineSync()!.toLowerCase();

    print("Filtro $filtroAnimal");
    for (var animal in listaAnimais) {
      if ((filtroAnimal == 'girafa' && animal is Girafa) ||
          (filtroAnimal == 'hamster' && animal is Hamster) ||
          (filtroAnimal == 'lontra' && animal is Lontra)) {
        print("\nNome: ${animal.nome}");
        print("Gênero: ${animal.genero}");
        print("Porte: ${animal.porte.name}");
        print("Idade: ${animal.getIdade}");
        print("                               ");
      }}

    // sair
    case 6:
    return;
  }
  print("---------------------------------");
}}