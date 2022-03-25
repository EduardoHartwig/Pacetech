package projetopacetechsemana7;

public class ProjetoPacetechSemana7 {

    public static void main(String[] args) {

        Empregado objempregado = new Empregado("Eduardo", "Hartwig", -1709.5d);
        Empregado objempregado2 = new Empregado("Mateus", "Silva", 2400.7d);
        
        
        System.out.printf(objempregado.getNome() + " " + objempregado.getSobrenome() + " " + "Possui um Salário Anual de: R$ %.2f reais.", objempregado.calcularAnual());
        System.out.printf("\n" + objempregado2.getNome() + " " + objempregado2.getSobrenome() + " " + "Possui um Salário Anual de: R$ %.2f Reais.", objempregado2.calcularAnual());

        objempregado.setSalario(objempregado.getSalario()* 1.10);
        objempregado2.setSalario(objempregado2.getSalario()* 1.10);
        
        System.out.printf("\n \n" + objempregado.getNome() + " " + objempregado.getSobrenome() + " " + "Recebe um aumento de 10%% totalizando ao ano: R$ %.2f reais.", objempregado.calcularAnual());
        System.out.printf("\n" + objempregado2.getNome() + " " + objempregado2.getSobrenome() + " " + "Recebe um aumento de 10%% totalizando ao ano: R$ %.2f reais.", objempregado2.calcularAnual());
    }
}
