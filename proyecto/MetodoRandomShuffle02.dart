import 'dart:io';
import 'dart:math';

// Función para emparejar personas con frutas
void emparejarPersonasConFrutas(List<String> personas, List<String> frutas) {
  var random = Random();
  // Barajar las listas para asegurarse de que estén en orden aleatorio
  personas.shuffle(random);
  frutas.shuffle(random);

  // Lista para almacenar los emparejamientos
  List<List<String>> emparejamientos = [];

  // Emparejar cada persona con una fruta
  for (int i = 0; i < personas.length; i++) {
    emparejamientos.add([personas[i], frutas[i % frutas.length]]);
  }

  // Mostrar los emparejamientos
  for (var emparejamiento in emparejamientos) {
    print('Persona: ${emparejamiento[0]}, Fruta: ${emparejamiento[1]}');
  }
}

void main() {
  // Listas para almacenar personas y frutas ingresadas por el usuario
  List<String> personas = [];
  List<String> frutas = [];
  
  // Ingresar personas manualmente
  print('Ingrese la cantidad de personas:');
  int numPersonas = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < numPersonas; i++) {
    print('Ingrese el nombre de la persona ${i + 1}:');
    String persona = stdin.readLineSync()!;
    personas.add(persona);
  }

  // Ingresar frutas manualmente
  print('Ingrese la cantidad de frutas:');
  int numFrutas = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < numFrutas; i++) {
    print('Ingrese el nombre de la fruta ${i + 1}:');
    String fruta = stdin.readLineSync()!;
    frutas.add(fruta);
  }

  // Llamar a la función para emparejar personas con frutas
  print("La lista nueva es:");
  emparejarPersonasConFrutas(personas, frutas);
}