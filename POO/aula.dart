import 'dart:io';

class Humano{
  String nome = '';
  int idade = 0;
  String genero = '';
  double altura = 0.0;
  double peso = 0.0;
  int passos = 0;

  Humano(this.nome,this.idade, this.genero, this.altura, this.peso);

  void exibirPessoa(){
    print(this.nome);
  }

  void andar(){
    passos += 1;
  }

}

void main(){
  Humano Carol = Humano("Carolina", 19, "Feminino", 1.75, 75.50);

  Carol.exibirPessoa();


  Carol.andar();
  Carol.andar();
  Carol.andar();

  print(Carol.passos);

  // Carol.nome = "Carolina";
  // Carol.idade = 19;
  // Carol.genero = "Feminino";
  // Carol.altura = 1.75;
  // Carol.peso = 75.5;

  // Humano Thalita = Humano();

  // Thalita.nome = "Thalita";
  // Thalita.idade = 19;
  // Thalita.genero = "Feminino";
  // Thalita.altura = 1.55;
  // Thalita.peso = 50.0;   
}