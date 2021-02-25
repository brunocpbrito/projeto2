

package perfil;

module Periodo
{
    parameters:
        @display("i=misc/cloud");
        int qtdeDisciplinas = default(1);

    gates:
        input entrada[1];
        output saida[1];
    
    submodules:
        disciplina[qtdeDisciplinas]: SegundoPeriodo;
      
    connections:

        entrada[0] -->  disciplina[0].entrada[0];
        disciplina[0].saida[0] -->  saida[0];


}
