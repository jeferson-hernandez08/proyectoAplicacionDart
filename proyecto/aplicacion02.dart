import 'dart:io';
import 'dart:math';

void main() {
  // DECLARACIÓN VARIABLES - LISTAS - MATRICES
  int opcion; // Variable para preguntar opción del menú
  List<String> vectorTemasPredef = [  // Vector para temas predefinidos
    'P.O.O', 
    'Diferencia entre P.O.O y programación estructurada', 
    'Qué es objeto? Qué es clase? Diferencia entre ambos',
    'Qué es abstracción?',
    'Qué es encapsulamiento?',
    'Qué es herencia?',
    'Qué es polimorfismo? Y un ejemplo',
    'Cuáles son los principales diagramas de UML?'
  ];
  List<String> vectorEstudiantesPredef = [  // Lista de estudiantes predefinidos
    'ANDRES FELIPE SANCHEZ HURTADO', 'ANGIE DAHIANA RIOS QUINTERO', 'CRISTIAN ALVAREZ ARANZAZU', 
    'DANIEL ESTIVEN ARBOLEDA DUQUE', 'DAVID ANDRES MORALES GUAPACHA', 'DAVID STIVEN OCAMPO LONDOÑO', 
    'ESTEBAN REYES AGUDELO', 'JACOBO GALVIS JIMENEZ', 'JAIME ANDRES CALLE SALAZAR', 'JEFERSON MAURICIO HERNANDEZ LADINO', 
    'JHON ALEXANDER PINEDA OSORIO', 'JOSE MIGUEL SIERRA ARISTIZABAL', 'JOSÉ SEBASTIÁN OCAMPO LÓPEZ', 
    'JUAN ANDRES OSORIO GOMEZ', 'JUAN DIEGO CALVO OSORIO', 'JUAN ESTEBAN LOPEZ CALLE', 
    'JUAN PABLO RIOS ARISTIZABAL', 'MARIA PAULA MELO SOLANO', 'MIGUEL ANGEL PEÑA JIMENEZ', 
    'SAMUEL CASTAÑO CARDONA', 'JUAN JOSÉ POSADA PÉREZ', 'ALEJANDRO SERNA LONDOÑO', 
    'JUAN MANUEL ZULUAGA RINCON', 'JUAN DANIEL GOMEZ LASERNA', 'YERSON STIVEN HERRERA OBANDO', 
    'MATEO HERRERA VARGAS', 'ALEJANDRO VALLEJO ESCOBAR'
  ];
  List<String> vectorTemaInteres = [];
  List<String> vectorEstudiantesInteres = [];
  List<String> vectorComplejidad = ['Muy fácil', 'Fácil', 'Medio', 'Difícil']; // Vector para complejidad de los temas
  Map<int, int> estudiantesPorComplejidad = {1: 1, 2: 2, 3: 3, 4: 4}; // Mapa para la cantidad de estudiantes por nivel de complejidad
  
  // FUNCIONES AUXILIARES
  void emparejarEstudiantesConTemas(List<String> estudiantes, List<String> temas) {
    var random = Random();
    estudiantes.shuffle(random);
    temas.shuffle(random);
    List<List<String>> matriz = [];
    for (int i = 0; i < estudiantes.length; i++) {
      matriz.add([estudiantes[i], temas[i % temas.length]]);
    }
    // Mostrar los emparejamientos
    Map<String, List<String>> temasConEstudiantes = {};
    for (var emparejamiento in matriz) {
      String tema = emparejamiento[1];
      if (!temasConEstudiantes.containsKey(tema)) {
        temasConEstudiantes[tema] = [];
      }
      temasConEstudiantes[tema]!.add(emparejamiento[0]);
    }
    // Imprimir los resultados
    temasConEstudiantes.forEach((tema, estudiantes) {
      print("Tema: $tema");
      print("Estudiantes:");
      estudiantes.forEach((estudiante) {
        print("- $estudiante");
      });
      print("***************");
    });
  }

  // ENTRADA DATOS - PROCESOS FORMULAS - SALIDA DATOS.
  do {
    print("*****************************");
    print("Bienvenido a la aplicación de selección aleatoria de estudiantes y temas de exposición.");
    print("Desea seleccionar los grupos con temas predefinidos (opción 1) o temas de su interés (opción 2) o salir (opción 9)?");
    print("1. Temas predefinidos.");
    print("2. Temas de su interés");
    print("9. Para salir de la aplicación.");
    opcion = int.parse(stdin.readLineSync()!);
    
    switch (opcion) {
      case 1:
        print("Ha seleccionado listas de temas y estudiantes predefinidos");
        print("Los temas son:");
        for (int i = 0; i < vectorTemasPredef.length; i++) {
          print("Exposición #${i + 1}: ${vectorTemasPredef[i]}");
        }
        print("*" * 50);
        print("La lista de estudiantes es:");
        for (int i = 0; i < vectorEstudiantesPredef.length; i++) {
          print("#${i + 1}. ${vectorEstudiantesPredef[i]}");
        }
        print("*" * 50);
        print("La lista aleatoria temas/estudiantes es:");
        emparejarEstudiantesConTemas(vectorEstudiantesPredef, vectorTemasPredef);

        // Menu para realizar los tres intentos definitivos.
        do {
          print("*" * 60);
          print("Deseas realizar los tres intentos aleatorios?");
          print("El tercer intento será el definitivo!");
          print("1. Para tres intentos aleatorios");
          print("2. Ir a menú principal.");
          opcion = int.parse(stdin.readLineSync()!);
          switch (opcion) {
            case 1:
              for (int i = 0; i < 3; i++) {
                print("*" * 60);
                print("Intento # ${i + 1}:");
                print("La lista aleatoria temas/estudiantes es:");
                emparejarEstudiantesConTemas(vectorEstudiantesPredef, vectorTemasPredef);
              }
              break;
            case 2:
              print("Hasta la próxima!");
              break;
            default:
              print("Error. Ingrese opción #1 o opción #2 para salir.");
              break;
          }
        } while (opcion != 2);
        break;
        
      case 2:
        print("Ha seleccionado temas de su interés");
        print("Ingrese la cantidad de temas en total para el grupo:");
        int cantTemas = int.parse(stdin.readLineSync()!);
        List<String> temasSeleccionados = [];
        Map<int, int> temasPorNivel = {}; // Mapa para guardar la cantidad de temas por nivel de complejidad
        Map<int, List<String>> temasNivel = {1: [], 2: [], 3: [], 4: []}; // Mapa para almacenar los temas según el nivel de complejidad
        int totalEstudiantesRequeridos = 0;

        for (int i = 0; i < cantTemas; i++) {
          print("Ingrese el tema #${i + 1}:");
          String tema = stdin.readLineSync()!;
          vectorTemaInteres.add(tema);

          print("Ingrese nivel de complejidad para este tema #${i + 1} ${tema}:");
          print("Seleccione el nivel de complejidad:");
          for (int j = 0; j < vectorComplejidad.length; j++) { // Imprimir menús con for.
            print("${j + 1}. Nivel: ${vectorComplejidad[j]}");
          }
          int complejidad = int.parse(stdin.readLineSync()!);

          if (complejidad < 1 || complejidad > 4) {
            print("Opción incorrecta. Seleccionando nivel por defecto: Muy fácil.");
            complejidad = 1;
          }

          temasPorNivel[complejidad] = (temasPorNivel[complejidad] ?? 0) + 1;
          temasNivel[complejidad]!.add(tema);
          totalEstudiantesRequeridos += estudiantesPorComplejidad[complejidad]!;
          print("Tema #${i + 1} ${tema}, nivel de complejidad: ${vectorComplejidad[complejidad - 1]}.");
        }

        print("*" * 60);
        print("Ingrese la cantidad de estudiantes para asignarlos a los temas:");
        print("La cantidad de estudiantes debe ser $totalEstudiantesRequeridos.");
        int cantEstudiantes = int.parse(stdin.readLineSync()!);

        if (cantEstudiantes == totalEstudiantesRequeridos) {
          vectorEstudiantesInteres.clear(); // Limpiar la lista de estudiantes anterior
          for (int i = 0; i < cantEstudiantes; i++) {
            print("Ingrese estudiante #${i + 1}:");
            String estudiante = stdin.readLineSync()!;
            vectorEstudiantesInteres.add(estudiante);
          }

          // Asignar los estudiantes a los temas según el nivel de complejidad
          List<String> estudiantesDisponibles = List.from(vectorEstudiantesInteres);
          for (int nivel in [1, 2, 3, 4]) {
            List<String> temasNivelActual = temasNivel[nivel]!;
            int estudiantesPorGrupo = estudiantesPorComplejidad[nivel]!;
            for (String tema in temasNivelActual) {
              if (estudiantesDisponibles.length < estudiantesPorGrupo) {
                print("No hay suficientes estudiantes para el tema $tema.");
                return;
              }
              print("Tema: $tema");
              print("Estudiantes:");
              for (int i = 0; i < estudiantesPorGrupo; i++) {
                print("- ${estudiantesDisponibles.removeAt(0)}");
              }
              print("***************");
            }
          }

          // Menu para realizar los tres intentos definitivos.
          do {
            print("Deseas realizar los tres intentos aleatorios?");
            print("El tercer intento será el definitivo!");
            print("1. Para tres intentos aleatorios.");
            print("2. Ir a menú principal.");
            opcion = int.parse(stdin.readLineSync()!);
            switch (opcion) {
              case 1:
                for (int i = 0; i < 3; i++) {
                  print("*" * 60);
                  print("Intento # ${i + 1}:");
                  emparejarEstudiantesConTemas(vectorEstudiantesInteres, vectorTemaInteres);
                }
                break;
              case 2:
                print("Hasta la próxima!");
                break;
              default:
                print("Error. Ingrese opción #1 o opción #2 para salir.");
                break;
            }
          } while (opcion != 2);
        } else {
          print("La cantidad de estudiantes debe ser igual a la cantidad de estudiantes requerida.");
          print("Deberá buscar más temas o más estudiantes para coincidir con el número requerido.");
          print("Valide e intente más tarde.");
        }
        break;
        
      case 9:
        print("Hasta la próxima!");
        break;
        
      default:
        print("Opción incorrecta. Intente nuevamente.");
        break;
    }
  } while (opcion != 9);
}