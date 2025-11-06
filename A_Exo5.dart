abstract class Forme {
  double calculerAire();

  void afficherMessage() {
    print('Calcul de l\'aire ...');
  }
}

class Cercle extends Forme {
  final double rayon;

  Cercle(this.rayon);

  @override
  double calculerAire() => 3.14 * rayon * rayon;
}

class Rectangle extends Forme {
  final double longueur, largeur;

  Rectangle(this.longueur, this.largeur);

  @override
  double calculerAire() => longueur * largeur;
}

void main() {
  var f1 = Cercle(3);
  var f2 = Rectangle(4, 5);

  f1.afficherMessage();
  print('Aire du cercle : ${f1.calculerAire()}');

  f2.afficherMessage();
  print('Aire du rectangle : ${f2.calculerAire()}');
}