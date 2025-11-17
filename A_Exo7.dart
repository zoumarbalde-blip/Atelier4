class Tache {
  String description;
  static int nombreTotal = 0;

  Tache(this.description) {
    nombreTotal++;
  }
}

void main() {
  var t1 = Tache('Je fais mes courses');
  var t2 = Tache('Je réviser Dart pour mon QCM');
  var t3 = Tache('envoyer le devoir de developpement application');

  print('Nombre total de tâches : ${Tache.nombreTotal}');
}