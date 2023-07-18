import 'package:meuapp_ex/models/Aluno_Class.dart';
import 'package:meuapp_ex/models/console_utils.dart';

void execute() {
  print("Bem vindo ao sistema de notas");
  String nome = ConsoleUtils.lerStringComTexto("Digite nome do aluno: ");
  var aluno = Aluno(nome);
  double? nota;
  do {
    nota = ConsoleUtils.lerDoubleComTextoSaida(
        "Digite a nota ou s para sair: ", "s");
    if (nota != null) {
      aluno.addNota(nota);
    }
  } while (nota != null);
  print(
      "Média de ${aluno.getNome()}: ${aluno.retornaMedia().toStringAsFixed(2)}");
  print(aluno.classificacao(aluno.getNome(), 7));
}
