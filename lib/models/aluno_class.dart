class Aluno {
  String _nome = "";
  final List<double> _notas = [];

  Aluno(String nome) {
    _nome = nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  List<double> getNotas() {
    return _notas;
  }

  void addNota(double nota) {
    _notas.add(nota);
  }

  double retornaMedia() {
    double totalNotas = 0;
    for (var nota in _notas) {
      totalNotas += nota;
    }
    double media = totalNotas / _notas.length;
    return media.isNaN ? 0 : media;
  }

  String classificacao(String nome, double notaCorte) {
    if (retornaMedia() >= notaCorte) {
      return "Aluno $_nome está aprovado!";
    } else {
      return "Aluno $_nome está reprovado!";
    }
  }
}
