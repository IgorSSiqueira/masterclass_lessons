import 'dart:io';

void main() {
  print('Digite os 9 primeiros números do cpf');
  String cpfAux = stdin.readLineSync() ?? '';
  PersonCPF igor = PersonCPF(cpf: cpfAux);
  cpfAux = retornaNumerosCPF(cpf: cpfAux);
  cpfAux = geraDigito(cpfAux);
  cpfAux = geraDigito(cpfAux);
  igor.cpf = ajustaMascaraCpf(cpf: cpfAux);

  if (verificaCpf(cpf: igor.cpf)) {
    print('CPF: ${igor.cpf}');
  } else {
    print('O número informado não é um CPF: ${igor.cpf}');
  }
}

class PersonCPF {
  String cpf = '';

  PersonCPF({required this.cpf});
}

String retornaNumerosCPF({required String cpf}) {
  String aux = '';

  RegExp regex = RegExp(r'\d+');
  Iterable<Match> matches = regex.allMatches(cpf);

  List<String> numeros = [];
  for (Match match in matches) {
    numeros.add(match.group(0)!);
  }

  return numeros.join();
}

String geraDigito(String cpf) {
  var aux = 0;
  var j = 2;

  for (var i = cpf.length - 1; i >= 0; i--) {
    aux = aux + (int.parse(cpf[i]) * j);
    j++;
  }

  aux = aux % 11;

  if (aux < 2) {
    aux = 0;
  } else {
    aux = 11 - aux;
  }
  return cpf + aux.toString();
}

String ajustaMascaraCpf({required String cpf}) {
  return '${cpf.substring(0, 3)}.${cpf.substring(3, 6)}.${cpf.substring(6, 9)}-${cpf.substring(9)}';
}

bool verificaCpf({required String cpf}) {
  if (RegExp(r'^\d{3}\.\d{3}\.\d{3}\-\d{2}$').hasMatch(cpf)) {
    return true;
  }
  return false;
}
