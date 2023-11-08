void main(List<String> args) {
  
  for (int i = 0; i < 10; i++) {

    if (i == 5) {
      continue; //Si se cumple la condición, se salta el código que sigue y vuelve a ejecutar el ciclo
    }

    print(i);

    if (i == 2) {
      break; //Si se cumple la condición, se sale del ciclo
    }

  }

}