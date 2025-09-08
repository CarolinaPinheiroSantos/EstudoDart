import 'dart:io';

// class Animal{
//   String nome;
//   int idade;

//   Animal({
//     required this.nome,
//     required this.idade,
//   });  

//   void exibirInfo(){
//     print("Nome $nome e idade $idade");
//   }

//   void fazerSom(String nome){
//     print("");
//   }
// }

// class Cachorro extends Animal{
//   String? raca;

//   Cachorro({
//     required String nome,
//     required int idade,
//     this.raca,
//   }): super(nome: nome, idade: idade);

//   @override
//   void fazerSom(String nome){
//     print("AUAUAUAUUA");
//   }
// }

// class Gato extends Animal{
//   String? cor;

//   Gato({
//     required String nome,
//     required int idade,
//     this.cor,
//   }): super(nome: nome, idade: idade);

//   @override
//   void fazerSom(String nome){
//     print("MIAAAAAAAAAAAAAAAAAAAAAU");
//   }
// }

// void main(){
//   Gato Marie = Gato(nome: "Marie", idade: 5, cor: "branca");
//   Marie.fazerSom();
//   Marie.exibirInfo();

//   Cachorro Nina = Cachorro(nome: "Nina", idade: 8, raca: "vira-lata");
//   Nina.fazerSom();
//   Nina.exibirInfo();
// }



// Exemplo 2
class Veiculo{
  String nome;
  String cor;

  Veiculo({
    required this.nome,
    required this.cor,
  });

  void mover(bool cnh){
    if(cnh == true){

    }else{

    }
  } 
}

class Carro extends Veiculo{
  Carro({
    required String nome, required String cor
  }): super(nome: nome, cor:cor);

  @override
  void mover(bool cnh){
    if(cnh == true){
      print("Cinto");
      print("Ligar");
      print("Colocar primeira");
    }else{
      print("Não pode dirigir!!");
    }
  }
  
}

class Moto extends Veiculo{
  Moto({
    required String nome, required String cor
  }): super(nome: nome, cor: cor);

  @override
  void mover(bool cnh){
    if(cnh == true){
      print("Capacete");
      print("Colocar neutro");
      print("Ligar");
      print("Colocar primeira");
    }else{
      print("Você é os D!!");
    }
  }
}

void main(){
  Carro Carol = Carro(nome: "Corsa", cor: "Rosa");
  Carol.mover(true);
}