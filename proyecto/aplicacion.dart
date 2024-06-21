import 'dart:io';

void main() {

  //DECLARACION VARIABLES - LISTAS - MATRICES
  int opcion;      //Variable para preguntar opcion del menu 
  //List <String> vectorTemas = ['tema1', 'tema2','tema3','tema4','tema5','tema6','tema7'];   //Vector para temas.
  List <String> vectorTemaInteres =[];
  String tema;
  int cantTemas;                      //Cantidad de temas que se ingresan
  List <String> vectorEstudiantes = ['ANDRES FELIPE SANCHEZ HURTADO',
'ANGIE DAHIANA RIOS QUINTERO',
'CRISTIAN ALVAREZ ARANZAZU',
'DANIEL ESTIVEN ARBOLEDA DUQUE',
'DAVID ANDRES MORALES GUAPACHA',
'DAVID STIVEN OCAMPO LONDOÑO',
'ESTEBAN REYES AGUDELO',
'JACOBO GALVIS JIMENEZ',
'JAIME ANDRES CALLE SALAZAR',	
'JEFERSON MAURICIO HERNANDEZ LADINO',		
'JHON ALEXANDER PINEDA OSORIO',		
'JOSE MIGUEL SIERRA ARISTIZABAL',		
'JOSÉ SEBASTIÁN OCAMPO LÓPEZ',		
'JUAN ANDRES OSORIO GOMEZ',		
'JUAN DIEGO CALVO OSORIO',		
'JUAN ESTEBAN LOPEZ CALLE',		
'JUAN PABLO RIOS ARISTIZABAL',		
'MARIA PAULA MELO SOLANO',		
'MIGUEL ANGEL PEÑA JIMENEZ',		
'SAMUEL CASTAÑO CARDONA',		
'JUAN JOSÉ POSADA PÉREZ',		
'ALEJANDRO SERNA LONDOÑO',		
'JUAN MANUEL ZULUAGA RINCON',		
'JUAN DANIEL GOMEZ LASERNA',		
'YERSON STIVEN HERRERA OBANDO',		
'MATEO HERRERA VARGAS',		
'ALEJANDRO VALLEJO ESCOBAR'];  //Vector para temas.
  //String estudiantes;
  int cantEstudiantes;
  List <String> vectorComplejidad = ['Muy facil','Facil', 'Medio', 'dificil'];      //Vector para complejidad de los temas 

  //ENTRADA DATOS - PROCESOS FORMULAS - SALIDA DATOS.
  //Punto # 2 Creacion de los temas de exposicion.
  print("*******************************************************************");
  print("Bienvenido a la aplicacion de seleccion aleatoria de estudiantes y temas de exposición.");
  print("Desea seleccionar los grupos con temas predefinido (opcion 1) o temas de su interés (opción 2)?");
  opcion = int.parse(stdin.readLineSync()!);
  switch  (opcion) {
    case 1:
      print("Ha seleccionado lista de temas predefinidos");
      print("Escoja el tema a exponer:");
    break;
    case 2:
      print("Ha seleccionado temas de su interés");
      //Se hace selección 1 (predefinido) o 2(tema de interés) 
      //print("Ingrese la opcion deseada:");
      //opcion = int.parse(stdin.readLineSync()!);

      print("Ingrese la cantidad de temas en total para el grupo");
      cantTemas = int.parse(stdin.readLineSync()!);
      print("Ingrese el tema a exponer de su interés y su nivel de complejidad:");
      print("Ingrese el nombre de los $cantTemas temas para cada grupo:");
      for ( int i = 0; i < cantTemas; i++) {
        print("Ingrese el tema # ${i+1}:");
        tema = stdin.readLineSync()!;
        vectorTemaInteres.add(tema);
        print("Ingrese nivel de complejidad para este tema # ${i+1} ${vectorTemaInteres[i]}:"); //Se tendrán 3 niveles de complejidad (nivel 1-nivel 2-nivel 3)
        // do {
          print("**********************************************");
          print("Seleccione el nivel de complejidad:");
          print("1. Nivel: ${vectorComplejidad[0]}");
          print("2. Nivel: ${vectorComplejidad[1]}");
          print("3. Nivel: ${vectorComplejidad[2]}");
          print("4. Nivel: ${vectorComplejidad[3]}");
          print("9. Para Salir");
          print("**********************************************");
          print("Ingrese la opcion deseada:");
          opcion = int.parse(stdin.readLineSync()!);

          switch (opcion) {
            case 1: 
              print("Para este tema # ${i+1} ${vectorTemaInteres[i]} el nivel de complejidad es ${vectorComplejidad[0]}, se requiere 1 estudiante");
            break;
            case 2: 
              print("Para este tema # ${i+1} ${vectorTemaInteres[i]} el nivel de complejidad es ${vectorComplejidad[1]}, se requiere 2 estudiantes");
            break;
            case 3: 
              print("Para este tema # ${i+1} ${vectorTemaInteres[i]} el nivel de complejidad es ${vectorComplejidad[2]}, se requiere 3 estudiantes");
            break;
            case 4:
              print("Para este tema # ${i+1} ${vectorTemaInteres[i]} el nivel de complejidad es ${vectorComplejidad[3]}, se requiere 4 estudiantes");
            case 9: 
              print("Hasta la Proxima");  //Validar si lo quitamos o lo dejamos. 
            break;
            default:
              print("¡Opcion incorrecta!.");
              print("Ingrese opcion '1,2,3,' o '9 para salir"); 
          }
        // } //do
        // while ( opcion != 9 );   //Verificar DoWhile para opcion 9 salir o no ponerlo el salir. 
      } //for
      print("Ingrese la cantidad de estudiantes del grupo:");
      cantEstudiantes = int.parse(stdin.readLineSync()!);
      print("Ingrese primero los $cantEstudiantes estudiantes del grupo:"); 
      for ( int i = 0; i < cantEstudiantes; i++) {
        print("Ingrese estudiante # ${i+1}:");
        //estudiantes = stdin.readLineSync()!;
        //vectorEstudiantes.add(estudiantes);
        print("El vector va en:");
        print(vectorEstudiantes);
      }

      //Punto # 1 Menu de funcionabilidades.
      do {
        //Realizacion de la interface menu. 
        print("**********************************************");
        print("Seleccione el tema a escojer:");
        print("1. Tema # 1: ${vectorTemaInteres[0]}");
        print("2. Tema # 2: ${vectorTemaInteres[1]}");
        print("3. Tema # 3: ${vectorTemaInteres[2]}");
        print("4. Tema # 4: ${vectorTemaInteres[3]}");
        print("9. Para Salir");
        print("**********************************************");
        print("Ingrese la opcion desea:");
        opcion = int.parse(stdin.readLineSync()!);

        switch (opcion) {
          case 1:
            print("Esta es una ${vectorTemaInteres[0]}");
          break;
          case 2: 
            print("Esta es una ${vectorTemaInteres[1]}");
          break;
          case 3: 
            print("Esto es una ${vectorTemaInteres[2]}");
          break;
          case 4: 
            print("Esto es una ${vectorTemaInteres[3]}");
          break;
          case 9: 
            print("Hasta la Proxima");
          break;
        }
      }
      while ( opcion != 9 );
    break;
  }

}