import 'dart:math';

void emparejar(List<String> nombres, List<String> temas) {
  // Crear nuveas listas de las originales para barajarlas sin modificar las originales
  List<String> nombresNew = List.from(nombres);
  List<String> temasNew = List.from(temas);
  
  var random = Random();
  // Barajar listas para generar aleatoriedad
  nombresNew.shuffle(random);
  temasNew.shuffle(random);
  
  // Lista para almacenar emparejamientos
  List<List<String>> emparejamientos = [];

  // Emparejar cada persona con un tema
  for (int i = 0; i < nombresNew.length; i++) {
    emparejamientos.add([nombresNew[i], temasNew[i % temasNew.length]]);
  }

  // Mostrar los emparejamientos
  print("Los emparejamientos son:");
  for (var emparejamiento in emparejamientos) {
    print("${emparejamiento[0]} con el tema: ${emparejamiento[1]}");
  }
}

void main() {
  List<String> nombres = ['JuanE', 'Sierra', 'AlejandroV', 'AndresF'];
  List<String> temas = ['Historia, que es?', 'Diagramas estructurales', 'Diagrama de comportamiento', 'Usos y conclusiones'];
  
  emparejar(nombres, temas);
}