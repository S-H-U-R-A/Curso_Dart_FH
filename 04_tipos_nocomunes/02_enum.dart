
/**
 * Las enumeraciones facilitan la lectura del código
 * 
 * Son usadas para cuando necesitamos representar tipos, ejemplo:
 * 
 * Dias de la semana,
 * Tipos de equipaje, 
 * Tipos de productos,
 * Representar categorias, 
 * Tipos de estados de respuestas http,
 * Colores,
 * Representar opciones de seleeción
 * Etc.
 */

void main(List<String> args) {

  Audio volumen = Audio.ALTO;

  switch(volumen){
    case Audio.BAJO: print('Volumen bajo'); break;
    case Audio.MEDIO: print('Volumen medio'); break;
    case Audio.ALTO: print('Volumen alto'); break;
  }
  
}

enum Audio {
  BAJO,
  MEDIO,
  ALTO
}

