import 'dart:io';

class Veiculo{
  String nome;
  String cor;

  Veiculo({
    required this.nome,
    required this.cor,
  });

}

class Carro extends Veiculo{
  int capacidade;

  Carro({
    required String nome,
    required String cor,
    required this.capacidade,
  }): super(nome: nome, cor: cor);

  void exibirCarro(){
    print("Carro com nome: " + nome);
  }
}

void main(){
  Carro corsa = Carro(nome: "super corsa", cor: "cinza", capacidade: 6);
}