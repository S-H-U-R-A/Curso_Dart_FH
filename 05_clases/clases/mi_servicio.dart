class MiServicio {

  String url = 'https://abc.com';

  String key = 'ABC123';

  static final MiServicio _singleton = new MiServicio._internal(); //Variable que sirve para mantener la instancia de la clase en memoria, a ser static y final solo se puede inicializar una vez

  factory MiServicio() { //Constructor factory que regresa una instancia de la clase
    return _singleton;
  }

  MiServicio._internal(); //constructor privado que genera una instancia de la clase

}

/**
 * 
 * Cosas a tener en cuenta al hacer un Singleton:
 * 
 * 1. Una variable privada de tipo final y static de tipo de la clase, que sirve para mantener la instancia de la clase.
 * 
 * 2. Un constructor factory que regresa una instancia de la clase.
 * 
 * 3. Un constructor con nombre que sea privado que generará una instancia de la clase.
 * 
 */