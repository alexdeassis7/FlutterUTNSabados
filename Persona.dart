class Persona {
  // si uso el guion bajo hago que el atributo
  //sea privado -> ENCAPSULAMIENTO
  String _nombre, _apellido;

  Persona(this._nombre, this._apellido);

  void muestraPersona(Persona p) {
    print(p._nombre);
    print(p._apellido);
  }

  //Getters Funciones!
  String getNombre() => _nombre;
  String getApellido() => _apellido;
  //Setter Procedimientos!
  void setNombre(String nombre) {
    _nombre = nombre;
  }

  void setApellido(String apellido) {
    _apellido = apellido;
  }

  //get y set con nombres ficticios
  String get nombre => _nombre;
  String get apellido => _apellido;
  set nombre(String nombre) => _nombre = nombre;
  set apellido(String apellido) => _apellido = apellido;

  String nombreCompleto() {
    return '$_nombre $_apellido';
  }

  get nameCompleto => '$_nombre $_apellido';
}
