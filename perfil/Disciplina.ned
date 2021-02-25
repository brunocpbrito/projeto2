

package perfil;


simple Disciplina
{
    parameters:
        @display("i=old/folder;i2=status/red, red");
        int capacidadeTurma = default(100);                    //capacidade maxima da turma
        int probReprovacaoAluno = default(0);                  //porcentagem da probablidade de um aluno reprovar o periodo
        int probCancelamentoDisciplina = default(0);           //porcentagem da probabilidade de um aluno cancelar a disciplina
    gates:
        input entrada[1];
        output saida[1];

}