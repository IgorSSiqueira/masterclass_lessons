/*
QUESTÃO 1-
O (IMC) índice de massa corporal é baseado na altura e peso do individuo.
O calculo é representado por Dividir o peso pela Altura ao quadradro²

Cria uma função que realize o calculo de IMC.
*/

double returnIMC(double altura, double peso) {
  return peso / (altura * altura);
}

void main(List<String> arguments) {
  print('Cálculo de IMC');
  var imc = returnIMC(1.69, 105);

  if (imc < 18.5) {
    print('IMC $imc: Abaixo do peso');
  } else if (imc < 25) {
    print('IMC $imc: Peso normal');
  } else if (imc < 30) {
    print('IMC $imc: Excesso de peso');
  } else if (imc < 35) {
    print('IMC $imc: Obesidade classe 1');
  } else if (imc < 40) {
    print('IMC $imc: Obesidade classe 2');
  } else if (imc >= 40) {
    print('IMC $imc: Obesidade classe 3');
  }
}
