import 'dart:io';

void main(){
  stdout.write("Digite a temperatura em Celsius: ");
  double celsius = double.parse(stdin.readLineSync()!);

  celsiusParaFahrenheit(celsius);

}

void celsiusParaFahrenheit(double celsius){
  double Fahrenheit = (celsius * 1.8) + 32;
  
  print("A temperatura aproximada em Fahrenheit é de $Fahrenheit°F");
}