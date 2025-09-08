import 'dart:io';

class Conta{
  String nome_titular;
  double saldoIncial;
  double? investimento;

  Conta({
    required String this.nome_titular,
    required double this.saldoIncial,
    this.investimento,
  });

  void exibirInfos(){
    print("Nome do titular da conta:$nome_titular" );
    print("Saldo da conta $saldoIncial");
  }
}

class ContaCorrente extends Conta{
  double? limite;

  ContaCorrente({
    required String nome_titular,
    required double saldoIncial,
    this.limite,
  }): super(nome_titular: nome_titular, saldoIncial: saldoIncial);
}

class ContaPoupanca extends Conta{
  int taxaRendimento;

  ContaPoupanca({
    required String nome_titular,
    required double saldoIncial,
    required this.taxaRendimento
  }): super(nome_titular: nome_titular, saldoIncial: saldoIncial);

  void saldoAutualizado(){
    double rendimento = saldoIncial * (taxaRendimento / 100);
    double valorFinal = saldoIncial + rendimento;
    print("Saldo atualizado $valorFinal");
  }

}

void main(){
  ContaCorrente Conta1 = ContaCorrente(nome_titular: "Carolina", saldoIncial: 200, limite: 1000);
  Conta1.exibirInfos();

  ContaPoupanca Conta2 = ContaPoupanca(nome_titular: "Paulo", saldoIncial: 10, taxaRendimento: 30);
  Conta2.exibirInfos();
  Conta2.saldoAutualizado();
}