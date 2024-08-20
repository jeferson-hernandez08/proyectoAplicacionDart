void main() {
  //Tenemos un ejemplo de marvel donde fucionamos el prejijo de cada super heroe
  //con el sufijo.

  List<String> prefijos = ["super", "spider", "ant", "iron"];     //Definimos una lista de super heroes.
  String sufijo = "man";

  // Usando map para multiplicar cada número por 2
  List<String> nombresCompletos = prefijos.map((prefijos) => prefijos + sufijo).toList();

  // Imprimir el resultado
  print("Lista original: $prefijos");
  print("Lista transformada: $nombresCompletos");

}