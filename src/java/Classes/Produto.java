package Classes;

public class Produto {

	private int id;
	private String nome;
	private String fabricante;
	private String principioativo;
        private int quantidade;

    public Produto(int id, String nome, String fabricante, String principioativo, int quantidade) {
        this.id = id;
        this.nome = nome;
        this.fabricante = fabricante;
        this.principioativo = principioativo;
        this.quantidade = quantidade;
    }

    public String getFabricante() {
        return fabricante;
    }

    public int getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getPrincipioativo() {
        return principioativo;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setFabricante(String fabricante) {
        this.fabricante = fabricante;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setPrincipioativo(String principioativo) {
        this.principioativo = principioativo;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }
        	
}
