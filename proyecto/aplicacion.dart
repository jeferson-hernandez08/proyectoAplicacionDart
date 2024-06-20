import 'dart:io';

void main() {

  //DECLARACION VARIABLES - LISTAS - MATRICES
  int opcion;      //Variable para preguntar opcion del menu 
  List <String> vectorTemas = [];    //Vector para temas.
  List <String> vectorComplejidad = ['Facil', 'Medio', 'dificil'];      //Vector para complejidad de los temas 
  String tema;
  int cantTemas;                      //Cantidad de temas que se ingresan
  List <String> vectorEstudiantes = [];  //Vector para temas.
  String estudiantes;
  int cantEstudiantes;

  //ENTRADA DATOS - PROCESOS FORMULAS - SALIDA DATOS.
  //Punto # 2 Creacion de los temas de exposicion.
  print("*******************************************************************");
  print("Bienvenido a la aplicacion de seleccion aleatoria de estudiantes por temas de exposición.");
  print("Ingrese la cantidad de temas en total para el grupo y su complejidad:");
  cantTemas = int.parse(stdin.readLineSync()!);
  print("Ingrese el nombre de los $cantTemas temas para cada grupo:");
  for ( int i = 0; i < cantTemas; i++) {
    print("Ingrese el tema # ${i+1}:");
    tema = stdin.readLineSync()!;
    vectorTemas.add(tema);
    print("Ingrese nivel de complejidad para este tema:");//Se tendrán 3 niveles de complejidad (nivel 1-nivel 2-nivel 3)
     do {
    print("**********************************************");
    print("Seleccione el nivel de complejidad:");
    print("1. Nivel: ${vectorComplejidad[0]}");
    print("2. Nivel: ${vectorComplejidad[1]}");
    print("3. Nivel: ${vectorComplejidad[2]}");
    print("9. Para Salir");
    print("**********************************************");
    print("Ingrese la opcion desea:");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("Para este tema ${vectorTemas[0]} el nivel de complejidad es ${vectorComplejidad[0]}, se requiere 2 estudiantes");
      break;
      case 2: 
        print("Para este tema ${vectorTemas[1]} el nivel de complejidad es ${vectorComplejidad[1]}, se requiere 3 estudiantes");
      break;
      case 3: 
        print("Para este tema ${vectorTemas[2]} el nivel de complejidad es ${vectorComplejidad[2]}, se requiere 4 estudiantes");
      break;
      case 9: 
        print("Hasta la Proxima");
      break;
    }
  }
  while ( opcion != 9 );
  }
  print("Ingrese la cantidad de estudiantes del grupo:");
  cantEstudiantes = int.parse(stdin.readLineSync()!);
  print("Ingrese primero los $cantEstudiantes estudiantes del grupo:"); 
  for ( int i = 0; i < cantEstudiantes; i++) {
    print("Ingrese estudiante # ${i+1}:");
    estudiantes = stdin.readLineSync()!;
    vectorEstudiantes.add(estudiantes);
    print("El vector va en:");
    print(vectorEstudiantes);
  }

  //Punto # 1 Menu de funcionabilidades.
  do {
    //Realizacion de la interface menu. 
    print("**********************************************");
    print("Seleccione el tema a escojer:");
    print("1. Tema # 1: ${vectorTemas[0]}");
    print("2. Tema # 2: ${vectorTemas[1]}");
    print("3. Tema # 3: ${vectorTemas[2]}");
    print("4. Tema # 4: ${vectorTemas[3]}");
    print("9. Para Salir");
    print("**********************************************");
    print("Ingrese la opcion desea:");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("Esta es una ${vectorTemas[0]}");
      break;
      case 2: 
        print("Esta es una ${vectorTemas[1]}");
      break;
      case 3: 
        print("Esto es una ${vectorTemas[2]}");
      break;
      case 4: 
        print("Esto es una ${vectorTemas[3]}");
      break;
      case 9: 
        print("Hasta la Proxima");
      break;
    }
  }
  while ( opcion != 9 );
 
}