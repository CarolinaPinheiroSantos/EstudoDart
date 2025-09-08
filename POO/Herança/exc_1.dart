import 'dart:io';
//1
class Animal{
  String nome;
  int idade;

  Animal({
    required this.nome,
    required this.idade,
  });  

  void exibirInfo(){
    print("Nome $nome e idade $idade");
  }
}

class Cachorro extends Animal{
  String? raca;

  Cachorro({
    required String nome,
    required int idade,
    this.raca,
  }): super(nome: nome, idade: idade);

  void fazerSom(){
    print("AUAUAUAUUA");
  }
}

class Gato extends Animal{
  String? cor;

  Gato({
    required String nome,
    required int idade,
    this.cor,
  }): super(nome: nome, idade: idade);

  void fazerSom(){
    print("MIAAAAAAAAAAAAAAAAAAAAAU");
  }
}

void main(){
  Gato Marie = Gato(nome: "Marie", idade: 5, cor: "branca");
  Marie.fazerSom();
  Marie.exibirInfo();

  Cachorro Nina = Cachorro(nome: "Nina", idade: 8, raca: "vira-lata");
  Nina.fazerSom();
  Nina.exibirInfo();
}

