import 'dart:io';

void main(List<String> arguments) {
  print('O cálculo será feito da seguinte maneira: a*b = c*d');
  print('Deixe vazio o campo que deseja fazer a regra de 3');

  print('Digite o valor de A:');
  String a = stdin.readLineSync() ?? '';

  print('Digite o valor de B:');
  String b = stdin.readLineSync() ?? '';

  print('Digite o valor de C:');
  String c = stdin.readLineSync() ?? '';

  print('Digite o valor de D:');
  String d = stdin.readLineSync() ?? '';
  print('');

  if ((a.isEmpty && b.isEmpty) ||
      (a.isEmpty && c.isEmpty) ||
      (a.isEmpty && d.isEmpty) ||
      (b.isEmpty && c.isEmpty) ||
      (b.isEmpty && d.isEmpty) ||
      (c.isEmpty && d.isEmpty)) {
    print('Mais que um campo está vazio');
    exit(0);
  }

  if (a.isEmpty) {
    print(
        'Valor de A = ${(double.parse(b) * double.parse(c)) / double.parse(d)}');
  } else if (b.isEmpty) {
    print(
        'Valor de B = ${(double.parse(a) * double.parse(d)) / double.parse(c)}');
  } else if (c.isEmpty) {
    print(
        'Valor de C = ${(double.parse(a) * double.parse(d)) / double.parse(b)}');
  } else if (d.isEmpty) {
    print(
        'Valor de D = ${(double.parse(b) * double.parse(c)) / double.parse(a)}');
  } else {
    print('Algum valor digitado não foi um número');
  }
}
