import 'dart:math';

void main() {
  var random = Random();  //Proporciona los números aleatorios necesarios para la mezclar la lista (Generador).
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  
  // Mezclar la lista de números
  numeros.shuffle(random);  //shufle nos mezcla los elementos de la lista de manera aleatoria.
  
  // Imprimir la lista mezclada
  print("Lista de números mezclada: $numeros");
  
}