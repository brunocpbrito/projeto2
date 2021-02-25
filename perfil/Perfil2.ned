

package perfil;

network PerfilComposto
{
    parameters:
        @display("i=misc/cloud;bgb=500,217");
        int qtdePeriodos = default(2);


    types:
        channel A extends ned.DatarateChannel
        {
            delay = 0.2s;
        }
    submodules:
        inicio: Inicio {
            @display("p=43,80");

        }
        formados: Fim {
            @display("p=460,80");
        }
        periodo1: SegundoPeriodo {
            @display("p=146,81;i=block/network");
            capacidadeTurma = 60;                       //capacidade maxima da turma
            probReprovacaoAluno = 30;                   //porcentagem da probablidade de um aluno reprovar o periodo
            probCancelamentoDisciplina = 20;            //porcentagem da probabilidade de um evadir. Esta cancelamento, mas eh evasao
            probRetornoCancelamento = 0;

        }
        periodo2: SegundoPeriodo {
            @display("p=241,81;i=block/network");
            capacidadeTurma = 60;                       //capacidade maxima da turma
            probReprovacaoAluno = 30;                   //porcentagem da probablidade de um aluno reprovar o periodo
            probCancelamentoDisciplina = 20;            //porcentagem da probabilidade de um evadir. Esta cancelamento, mas eh evasao
            probRetornoCancelamento = 0;

        }
        periodo3: SegundoPeriodo {
            @display("p=343,81;i=block/network");
            capacidadeTurma = 60;                       //capacidade maxima da turma
            probReprovacaoAluno = 30;                   //porcentagem da probablidade de um aluno reprovar o periodo
            probCancelamentoDisciplina = 20;            //porcentagem da probabilidade de um evadir. Esta cancelamento, mas eh evasao
            probRetornoCancelamento = 0;

        }
    connections:

        inicio.saida[0] --> periodo1.entrada[0];
        periodo1.saida[0] --> periodo2.entrada[0];
        periodo2.saida[0] --> periodo3.entrada[0];
        periodo3.saida[0] --> formados.entrada[0];



}
