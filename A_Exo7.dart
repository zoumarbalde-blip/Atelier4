class Tache {
  String description;
  static int nombreTotal = 0;

  Tache(this.description) {
    nombreTotal++;
  }
}

void main() {
  var t1 = Tache('Faire les courses');
  var t2 = Tache('Réviser Dart');
  var t3 = Tache('Envoyer le devoir');

  print('Nombre total de tâches : ${Tache.nombreTotal}');
}