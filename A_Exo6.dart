abstract class Connectable {
  void connecter(String utilisateur);
  void deconnecter();
}

class ServeurAPI implements Connectable {
  @override
  void connecter(String utilisateur) {
    print('ServeurAPI : Connexion établie pour $utilisateur.');
  }

  @override
  void deconnecter() {
    print('ServeurAPI : Déconnexion réussie.');
  }
}

class BaseDeDonnees implements Connectable {
  @override
  void connecter(String utilisateur) {
    print('BaseDeDonnees : Connexion pour $utilisateur.');
  }

  @override
  void deconnecter() {
    print('BaseDeDonnees : Déconnexion terminée.');
  }
}

void main() {
  var s1 = ServeurAPI();
  var s2 = BaseDeDonnees();

  List<Connectable> services = [s1, s2];

  for (var service in services) {
    service.connecter('Oumar');
    service.deconnecter();
  }
}