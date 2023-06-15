import 'dart:io';

void main() {
  print('Digite os 9 primeiros números do cpf');
  String userCPF = stdin.readLineSync() ?? '';
  if (VerificaCPF().confirmaCPFInicial(cpf: userCPF)) {
    userCPF = VerificaCPF().retornaNumerosCPF(cpf: userCPF);
    userCPF = VerificaCPF().geraDigito(cpf: userCPF);
    VerificaCPF().ajustaMascaraCpf(cpf: userCPF);
  }
}

class VerificaCPF {
  String retornaNumerosCPF({required String cpf}) {
    RegExp regex = RegExp(r'\d+');
    Iterable<Match> matches = regex.allMatches(cpf);

    List<String> numeros = [];
    for (Match match in matches) {
      numeros.add(match.group(0)!);
    }

    return numeros.join();
  }

  String geraDigito({required String cpf}) {
    var aux = 0;
    var j = 2;

    for (var i = cpf.length - 1; i >= 0; i--) {
      aux = aux + (int.parse(cpf[i]) * j);
      j++;
    }

    aux = aux % 11;

    aux < 2 ? aux = 0 : aux = 11 - aux;

    cpf = cpf + aux.toString();
    if (cpf.length == 10) {
      geraDigito(cpf: cpf);
    }

    return cpf;
  }

  void ajustaMascaraCpf({required String cpf}) {
    print(
        'Seu CPF é: ${cpf.substring(0, 3)}.${cpf.substring(3, 6)}.${cpf.substring(6, 9)}-${cpf.substring(9)}');
  }

  bool confirmaCPFInicial({required String cpf}) {
    if (RegExp(r'^\d{3}\.\d{3}\.\d{3}$').hasMatch(cpf) ||
        RegExp(r'^\d{9}$').hasMatch(cpf)) {
      return true;
    }
    print(
        'O número informado é inválido para o formato dos 9 digitos iniciais do CPF!');
    return false;
  }

  bool confirmaCPF({required String cpf}) {
    if (RegExp(r'^\d{3}\.\d{3}\.\d{3}\-\d{2}$').hasMatch(cpf)) {
      return true;
    }
    return false;
  }
}
