package Classes;

public class RankingVenda {
    private String nome;
    private int qtd;
    private double preco;
    private String apresentacao;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getQtd() {
        return qtd;
    }

    public void setQtd(int qtd) {
        this.qtd = qtd;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    /**
     * @return the apresentacao
     */
    public String getApresentacao() {
        return apresentacao;
    }

    /**
     * @param apresentacao the apresentacao to set
     */
    public void setApresentacao(String apresentacao) {
        this.apresentacao = apresentacao;
    }
    
    
}
