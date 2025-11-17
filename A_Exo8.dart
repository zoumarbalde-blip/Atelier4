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
    print('Voici le total de livres je pu créés : $totalLivres');
  }
}

class Roman extends Livre {
  String genre;

  Roman(String titre, String auteur, this.genre) : super(titre, auteur);

  void afficherGenre() {
    print('le genre : $genre');
  }
}

void main() {
  var l1 = Livre('L\'L’Aventure ambiguë', 'Cheikh Hamidou Kane');
  var r1 = Roman('Sherlock Holmes', 'Arthur Conan Doyle', 'Policier');
  var r2 = Roman('Contes d’Amadou Koumba', 'Birago Diop', 'Contes traditionnels africains');

  l1.afficherInfos();
  r1.afficherInfos();
  r1.afficherGenre();
  r2.afficherInfos();
  r2.afficherGenre();

  Livre.afficherTotalLivres();
}