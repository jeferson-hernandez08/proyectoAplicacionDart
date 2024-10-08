import 'dart:io';
import 'dart:math';

void main() {
  // DECLARACIÓN VARIABLES - LISTAS - MATRICES
  int opcion;   //Variable para preguntar opción del menú 
  List<String> vectorTemasPredef = [  // Vector para temas predefinidos
    'P.O.O', 
    'Diferencia entre P.O.O y programacion estructurada', 
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
  int cantiEstudiantesTemas = 0;
  
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
    Map<String, List<String>> temasConEstudiantes = {};  //Map para agrupar los estudiantes por tema. 
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
      print("*****************************************");
    });
  }

  // ENTRADA DATOS - PROCESOS FORMULAS - SALIDA DATOS.
  // Punto #2 Creación de los temas de exposición.
  do {
    print("***************************************************************************************");
    print("Bienvenido a la aplicación de selección aleatoria de estudiantes y temas de exposición.");
    print("Desea seleccionar los grupos con temas predefinidos (opción 1) o temas de su interés (opción 2) o salir (opción 9)?");
    print("1. Temas predefinidos.");
    print("2. Temas de su interés");
    print("9. Para salir de la aplicacion.");
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

        //Menu para para realizar los tres intentos definitivos.
        do {
        print("*" * 60);
        print("Deseas realizar los tres intentos aletarios ?:");
        print("El tercer intento sera el definitivo !");
        print("1. Para tres intentos aleatorios");
        print("2. Ir a menu principal.");
        opcion = int.parse(stdin.readLineSync()!);
          switch (opcion) {
            case 1:
              for (int i = 0; i < 3; i++) {
                print("*" * 60);
                print("Intento # ${i+1}:");
                print("La lista aleatoria temas/estudiantes es:");
                emparejarEstudiantesConTemas(vectorEstudiantesPredef, vectorTemasPredef);
              }
            break;
            case 2:
              print("Hasta la proxima !");
            break;
            default:
              print("Error Ingrese opcion # 1 o opcion # 2 para salir.");
            break;
          }
        }
        while (opcion != 2);
      break; 
      case 2:
        print("Ha seleccionado temas de su interés");
        print("Ingrese la cantidad de temas en total para el grupo:");
        int cantTemas = int.parse(stdin.readLineSync()!);
        for (int i = 0; i < cantTemas; i++) {
          print("Ingrese el tema #${i + 1}:");
          String tema = stdin.readLineSync()!;
          vectorTemaInteres.add(tema);
          print("Ingrese nivel de complejidad para este tema #${i + 1} ${tema}:");
          print("Seleccione el nivel de complejidad:");
          for (int j = 0; j < vectorComplejidad.length; j++) {   //Otra forma de imprimir menus con for. 
            print("${j + 1}. Nivel: ${vectorComplejidad[j]}");
          }
          int complejidad = int.parse(stdin.readLineSync()!);
          if (complejidad < 1 || complejidad > 4) {
            print("Opción incorrecta. Seleccionando nivel por defecto: ${vectorComplejidad[0]}");
            complejidad = 1;
          }
          else if ( complejidad == 1) {
                print("Para el tema #${i + 1} ${tema}, el nivel de complejidad es ${vectorComplejidad[complejidad - 1]}.");
                cantiEstudiantesTemas++;
                print("La cantidad de estudiantes va en $cantiEstudiantesTemas");
               }
               else if ( complejidad == 2) {
                     print("Para el tema #${i + 1} ${tema}, el nivel de complejidad es ${vectorComplejidad[complejidad - 1]}.");
                     cantiEstudiantesTemas +=2;
                     print("La cantidad de estudiantes va en $cantiEstudiantesTemas");
                    }
                    else if ( complejidad == 3) {
                          print("Para el tema #${i + 1} ${tema}, el nivel de complejidad es ${vectorComplejidad[complejidad - 1]}.");
                          cantiEstudiantesTemas +=3;
                          print("La cantidad de estudiantes va en $cantiEstudiantesTemas");
                         }
                         else if ( complejidad == 4) {
                               print("Para el tema #${i + 1} ${tema}, el nivel de complejidad es ${vectorComplejidad[complejidad - 1]}.");
                               cantiEstudiantesTemas +=4;
                               print("La cantidad de estudiantes va en $cantiEstudiantesTemas");
                              }             
        }
         print("*" * 60);
        print("Ingrese la cantidad de estudiantes para asignarlos a los temas:");
        print("La cantidad de estudiantes debe ser $cantiEstudiantesTemas, para asignarlos al los temas.");
        int cantEstudiantes = int.parse(stdin.readLineSync()!);
        if ( cantEstudiantes == cantiEstudiantesTemas ) {
          for (int i = 0; i < cantEstudiantes; i++) {
            print("Ingrese estudiante #${i + 1}:");
            String estudiante = stdin.readLineSync()!;
            vectorEstudiantesInteres.add(estudiante);
          }
          print("La lista aleatoria temas/estudiantes es:");
          emparejarEstudiantesConTemas(vectorEstudiantesInteres, vectorTemaInteres);

          //Menu para para realizar los tres intentos definitivos.
          do {
            print("Deseas realizar los tres intentos aletarios ?:");
            print("El tercer intento sera el definitivo !");
            print("1. Para tres intentos aleatorios.");
            print("2. Ir a menu principal.");
            opcion = int.parse(stdin.readLineSync()!);
            switch (opcion) {
              case 1:
                for (int i = 0; i < 3; i++) {
                  print("*" * 60);
                  print("Intento # ${i+1}:");
                  print("La lista aleatoria temas/estudiantes es:");
                  emparejarEstudiantesConTemas(vectorEstudiantesInteres, vectorTemaInteres);
                }
              break;
              case 2:
                print("Hasta la proxima !");
              break;
              default:
                print("Error Ingrese opcion # 1 o opcion # 2 para salir.");
              break;
            }
          }
          while (opcion != 2);
        }
        else {
          print("La cantidad de estudiantes deben ser igual a los estudianes de los temas  de complejidad");
          print("Debera buscar mas temas o mas estudiantes para no quedar por fuera.");
          print("Valide e intente mas tarde.");
        }
      break;
      case 9:
        print("Hasta la próxima !");
      break;
      default:
        print("Opción incorrecta intente nuevamente !.");
      break;
    }
  }
  while (opcion != 9);
}