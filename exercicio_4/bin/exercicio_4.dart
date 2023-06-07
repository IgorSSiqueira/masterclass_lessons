import 'dart:io';
import 'dart:math';

main() {
  print('Escreva a frase a ser criptografada:');
  var fraseInicial = stdin.readLineSync() ?? '';
  print('');

  String key = gerarKey(tamanho: fraseInicial.length, n: 0);
  print('key');
  print(key);
  print('');

  String encodeString = encode(frase: fraseInicial.toUpperCase(), key: key);
  print('encodeString');
  print(encodeString);
  print('');

  String decodedString = decode(key: key, encodedString: encodeString);
  print('decodedString');
  print(decodedString);
}

String gerarKey({required int tamanho, required n}) {
  List<String> key = gerarKeyFunction(tamanho: tamanho, n: n);
  return key.join();
}

List<String> gerarKeyFunction({required int tamanho, required n}) {
  Random random = Random();
  List<String> key = [];
  if (n < tamanho) {
    key.add(String.fromCharCode(random.nextInt(100)));
    n++;
    key.addAll(gerarKeyFunction(tamanho: tamanho, n: n));
  }

  return key;
}

String encode({required String frase, required String key}) {
  List<String> newCharCode =
      encodeFunction(frase: frase, key: key, nroInicial: 0);
  return newCharCode.join();
}

List<String> encodeFunction({
  required String frase,
  required String key,
  required int nroInicial,
}) {
  List<String> newCharCode = [];

  if ((nroInicial < frase.length) &&
      (frase[nroInicial].runes.first >= 'A'.runes.first &&
          frase[nroInicial].runes.first <= 'Z'.runes.first)) {
    newCharCode.add(String.fromCharCode(
        ((frase[nroInicial].runes.first + key[nroInicial].runes.first) % 26) +
            'A'.runes.first));
    nroInicial++;
    newCharCode
        .addAll(encodeFunction(frase: frase, key: key, nroInicial: nroInicial));
  } else if (nroInicial < frase.length) {
    newCharCode.add(String.fromCharCode(frase[nroInicial].runes.first));
    nroInicial++;
    newCharCode
        .addAll(encodeFunction(frase: frase, key: key, nroInicial: nroInicial));
  }

  return newCharCode;
}

decode({required String key, required String encodedString}) {
  List<String> decodedString = decodeFunction(
    key: key,
    encodedString: encodedString,
    n: 0,
  );
  return decodedString.join();
}

decodeFunction({
  required String key,
  required String encodedString,
  required int n,
}) {
  List<String> stringAux = [];
  if ((n < encodedString.length) &&
      (encodedString[n].runes.first >= 'A'.runes.first &&
          encodedString[n].runes.first <= 'Z'.runes.first)) {
    stringAux.add(String.fromCharCode(
        ((encodedString[n].runes.first - key[n].runes.first + 26) % 26) +
            'A'.runes.first));
    n++;
    stringAux
        .addAll(decodeFunction(key: key, encodedString: encodedString, n: n));
  } else if (n < encodedString.length) {
    stringAux.add(String.fromCharCode(encodedString[n].runes.first));
    n++;
    stringAux
        .addAll(decodeFunction(key: key, encodedString: encodedString, n: n));
  }
  return stringAux;
}
