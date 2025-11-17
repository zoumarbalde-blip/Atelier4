class Media {
  final String titre;

  Media(this.titre);

  void afficherType() {
    print('Ceci est un média générique.');
  }
}

class Livre extends Media {
  final String auteur;

  Livre(String titre, this.auteur) : super(titre);

  @override
  void afficherType() {
    print('Ceci est un Livre : $titre par $auteur.');
  }
}

class Film extends Media {
  final int dureeMinutes;

  Film(String titre, this.dureeMinutes) : super(titre);

  @override
  void afficherType() {
    print('Ceci est un Film : $titre ($dureeMinutes min).');
  }
}

void main() {
  List<Media> catalogue = [
    Livre('1999', 'Enfant Noir'),
    Film('Inception', 178),
    Livre('Le Petit Prince', 'Antoine de Saint-Exupéry'),
    Film('Titanic', 285),
  ];

  for (var item in catalogue) {
    item.afficherType();
  }
}