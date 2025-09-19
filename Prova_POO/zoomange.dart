import 'dart:io';

enum Porte{
  pequeno,
  medio,
  grande,
}

class Animal{
    String nome;
    int _idade = 0;
    String genero;
    Porte porte;

    Animal({
        required this.nome,
        required this.genero,
        required this.porte,
    });

    set setIdade(int idade){
      if(idade < 0){
        print("idade não pode ser menor que zero");
      }else{
        _idade = idade;
      }
    }

    int get getIdade{
      return _idade;
    }

    void emitirSom(String nome){
        print("");
    }

    void Comer(String nome){
        print("");
    }
}


class Girafa extends Animal{
    int quantidade_manchas;

    Girafa({
        required nome,
        required genero,
        required porte,
        required this.quantidade_manchas,
    }): super(nome:nome, genero: genero, porte: porte);

    @override
    void emitirSom(String nome){
        print("Girafa $nome esta emitindo o som grrr");
    }

    @override
    void Comer(String nome){
        print("Girafa $nome esta comendo folhas de árvores e arbustos");
    }

}

class Hamster extends Animal{
    String susto;

    Hamster({
        required nome,
        required genero,
        required porte,
        required this.susto,
    }): super(nome: nome, genero:genero, porte: porte);

    @override
    void emitirSom(String nome){
        print("Hamster $nome esta emitindo o som Squeak Squeak");
    }

    @override
    void Comer(String nome){
        print("Hamster $nome esta comendo sementes e grãos");
    }
}

class Lontra extends Animal{
    double tamanho;

    Lontra({
        required nome,
        required genero,
        required porte,
        required this.tamanho,
    }): super(nome:nome, genero:genero, porte: porte);

    @override 
    void emitirSom(String nome){
        print("Lontra $nome esta emitindo o som Kek-kek");
    }

    @override
    void Comer(String){
        print("Lontra $nome esta comendo peixes e Insetos aquáticos");
    }
}