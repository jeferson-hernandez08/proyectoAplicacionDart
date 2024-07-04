void main() {
  //Tenemos una lista de números y queremos crear una nueva lista donde 
  //cada número se multiplique por 2.

  List<int> numeros = [1, 2, 3, 4, 5];     //Definimos una lista de numeros.

  // Usando map para multiplicar cada número por 2
  List<int> resultado = numeros.map((numero) => numero * 2).toList(); //Usamos la funcion map en numeros para aplicar la funcion.

  // Imprimir el resultado
  print("Lista original: $numeros");
  print("Lista transformada: $resultado");
}