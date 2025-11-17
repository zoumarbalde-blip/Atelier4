abstract class Connectable {
  void connecter(String utilisateur);
  void deconnecter();
}

class ServeurAPI implements Connectable {
  @override
  void connecter(String utilisateur) {
    print('ServeurAPI : La Connexion établie pour $utilisateur.');
  }

  @override
  void deconnecter() {
    print('ServeurAPI : La déconnexion réussie.');
  }
}

class BaseDeDonnees implements Connectable {
  @override
  void connecter(String utilisateur) {
    print('BaseDeDonnees : La Connexion pour $utilisateur.');
  }

  @override
  void deconnecter() {
    print('BaseDeDonnees : La déconnexion terminée.');
  }
}

void main() {
  var s1 = ServeurAPI();
  var s2 = BaseDeDonnees();

  List<Connectable> services = [s1, s2];

  for (var service in services) {
    service.connecter('Oumar Balde');
    service.deconnecter();
  }
}