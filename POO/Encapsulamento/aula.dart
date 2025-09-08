import 'dart:io';

class Carro{
  String modelo = "";
  int _velocidade = 0; // _ antes é atributo privado

  int get buscarVelocidade{
    return _velocidade;
  }

  set alterarVelocidade(int nova_velocidade){
    if(nova_velocidade < 0){
      print("Velocidade não pode ser menor que zero");
    }else{
      nova_velocidade = _velocidade;
    }
    print(_velocidade);
  }
}