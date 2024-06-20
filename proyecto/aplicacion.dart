import 'dart:io';

void main() {

  //DECLARACION VARIABLES - LISTAS - MATRICES
  int opcion;    //Variable para preguntar opcion del menu 

  //Punto # 1.
  do {
    //Realizacion de la interface menu. 
    print("**********************************************");
    print("Bienvenido a la seccion aleatoria de estudiantes:");
    print("Seleccione el tema a escojer:");
    print("1. Tema: Suma");
    print("2. Tema: Resta");
    print("3. Tema: Division");
    print("4. Tema: Raiz Cuadrada");
    print("5. Funcionabilidad x");
    print("5. Funcionabilidad y");
    print("9. Para Salir");
    print("**********************************************");
    print("Ingrese la opcion desea:");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("Esta es una suma");
      break;
      case 2: 
        print("Esta es una resta");
      break;
      case 3: 
        print("Esto es una Division");
      break;
      case 4: 
        print("Esto es una funcionabilidad x");
      break;
      case 5: 
        print("Esto es una funcionabilidad y");
      break;
      case 9: 
        print("Hasta la Proxima");
      break;
    }
  }
  while ( opcion != 9 );
 
}