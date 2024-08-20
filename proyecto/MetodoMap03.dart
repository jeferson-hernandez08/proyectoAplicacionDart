void main() {
  //Tenemos este ejemplo de marvel, queremos tomar los nombres reales en el nuevo arreglo

  // Definir una lista de mapas que contiene los datos de los vengadores
  List<Map<String, String>> vengadores = [
    {'nombre': 'steve rogers', 'nombreHeroe': 'captain america'},
    {'nombre': 'tony stark', 'nombreHeroe': 'iron man'},
    {'nombre': 'bruce banner', 'nombreHeroe': 'the hulk'},
    {'nombre': 'peter parker', 'nombreHeroe': 'spiderman'},
    {'nombre': 'tchalla', 'nombreHeroe': 'black panther'}
  ];

  // Extraer los nombres reales usando el método map
  List<String> nombresReales = vengadores.map((vengador) => vengador['nombre']!).toList();

  // Imprimir los nombres reales
  print("Lista Original: $vengadores");
  print("Lista transformada: $nombresReales");
}