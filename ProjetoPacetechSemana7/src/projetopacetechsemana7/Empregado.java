package projetopacetechsemana7;

public class Empregado {

    private String nome;
    private String sobrenome;
    private double salario;

    //Método Construtor
    public Empregado(String nome, String sobrenome, double salario) {
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.salario = salario > 0 ? salario : 0d;
    }

    public double calcularAnual() {
        return this.salario * 12;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

}
