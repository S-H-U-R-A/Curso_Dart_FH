void main(List<String> args) {

  outerLoop: for(int i = 0; i < 5; i++) { //En Kotlin se usa las etiquetas mediante el simbolo de @, outerLoop@ for(j in 0 until 5) 

      print("Valor de i: $i");

      innerLoop: for(int j = 0; j < 5; j++) { //En Kotlin se usa las etiquetas mediante el simbolo de @, innerLoop@ for(j in 0 until 5) 

        print("Valor de j: $j");

        if(j == 2) {
          break outerLoop;
        }

      }

  }
  
}