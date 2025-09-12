import 'dart:io'

class Animal{
    String nome;
    int idade;
    String genero;

    Animal({
        required this.nome,
        required this.idade,
        required this.genero,
    });

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
        required idade,
        required genero,
        this.quantidade_manchas,
    }): super(nome:nome, idade: idade, genero: genero);

    @override
    void emitirSom(String nome){
        print("Girafa $nome esta emitindo o som grrr")
    }

    @override
    void Comer(String nome){
        print("$nome esta comendo folhas de árvores e arbustos")
    }

}

class Hamster extends Animal{
    String susto;

    Hamster({
        required nome,
        required idade,
        required genero,
        required this.susto,
    }) super(nome: nome, idade: idade, genero:genero);

    @override
    void emitirSom(String nome){
        print("Hamster $nome esta emitindo o som Squeak Squeak")
    }

    @override
    void Comer(String nome){
        print("$nome esta comendo sementes e grãos")
    }
}

class Lontra extends Animal{
    double tamanho;

    Lontra({
        required nome,
        required idade,
        required genero,
        required this.tamanho,
    }) super(nome:nome, idade:idade, genero:genero);

    @override 
    void emitirSom(String nome){
        print("Lontra $nome esta emitindo o som Kek-kek")
    }

    @override
    void Comer(String){
        print("Lontra $nome esta comendo peixes e Insetos aquáticos")
    }
}