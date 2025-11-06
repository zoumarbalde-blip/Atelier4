class Livre {
  String titre, auteur;
  int _pages = 200;
  static int totalLivres = 0;

  Livre(this.titre, this.auteur) {
    totalLivres++;
  }

  void afficherInfos() {
    print('Titre: $titre, Auteur: $auteur');
  }

  int get pages => _pages;

  static void afficherTotalLivres() {
    print('Total de livres créés : $totalLivres');
  }
}

class Roman extends Livre {
  String genre;

  Roman(String titre, String auteur, this.genre) : super(titre, auteur);

  void afficherGenre() {
    print('Genre : $genre');
  }
}

void main() {
  var l1 = Livre('L\'Étranger', 'Albert Camus');
  var r1 = Roman('Sherlock Holmes', 'Arthur Conan Doyle', 'Policier');
  var r2 = Roman('Harry Potter', 'J.K. Rowling', 'Fantastique');

  l1.afficherInfos();
  r1.afficherInfos();
  r1.afficherGenre();
  r2.afficherInfos();
  r2.afficherGenre();

  Livre.afficherTotalLivres();
}