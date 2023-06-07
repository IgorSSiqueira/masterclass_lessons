/*
QUESTÃO 2
Implemente a sequencia fibonacci com funcões recursivamente usando o Dart.

exemplo fibonacci:
Primeiros 10 da sequência
0 1 1 2 3 5 8 13 21 34 55 89....
*/

void main() {
  List<int> seqFibonacci = fibonacci(10);

  print(seqFibonacci.toString());
}

List<int> fibonacci(int n) {
  List<int> seqFibonacci = [];

  for (int i = 0; i < n; i++) {
    seqFibonacci.add(fibonacciCalculo(i));
  }
  return seqFibonacci;

  /* Como foi feito na primeira vez
  var proximoNro = 0;
  var numeroAnterior = 0;
  var aux = 1;
  seqFibonacci.add(numeroAnterior);
  seqFibonacci.add(aux);

  for (int i = 0; i < n; i++) {
    proximoNro = numeroAnterior + aux;
    numeroAnterior = aux;
    aux = proximoNro;

    seqFibonacci.add(proximoNro);
  }*/
}

int fibonacciCalculo(int n) {
  if (n == 0) {
    return n;
  } else if (n == 1) {
    return n;
  } else {
    return fibonacciCalculo(n - 1) + fibonacciCalculo(n - 2);
  }
}
