class Compte {
  final String numeroCompte;
  double _solde;

  Compte(this.numeroCompte, [this._solde = 0.0]);

  String get solde => '${_solde.toStringAsFixed(2)} \$';

  void depot(double montant) {
    if (montant > 0) {
      _solde += montant;
    }
  }
}

void main() {
  var monCompte = Compte('123ABC');
  monCompte.depot(150.0);
  print('Solde : ${monCompte.solde}');
}