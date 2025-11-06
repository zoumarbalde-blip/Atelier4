class Couleur {
  int r, g, b;

  Couleur(this.r, this.g, this.b);

  Couleur.rouge() : this(255, 0, 0);
  Couleur.vert() : this(0, 255, 0);
  Couleur.bleu() : this(0, 0, 255);

  void afficherCouleur() {
    print('R : $r, V : $g, B : $b');
  }
}

void main() {
  Couleur r = Couleur.rouge();
  Couleur v = Couleur.vert();
  Couleur b = Couleur.bleu();

  r.afficherCouleur();
  v.afficherCouleur();
  b.afficherCouleur();

}