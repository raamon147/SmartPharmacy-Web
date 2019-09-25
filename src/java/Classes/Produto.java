package Classes;

public class Produto{
    
    private String cod_prod;
    private String nome_prod;
    private int qtd_prod;
    private float preco_prod;
    private String fabr_prod;
    private String pr_ativo;
    private String dos_prod;
    private String status_prod;

    public Produto(String cod_prod, String nome_prod, int qtd_prod, float preco_prod, String fabr_prod, String pr_ativo, String dos_prod, String status_prod) {
        this.cod_prod = cod_prod;
        this.nome_prod = nome_prod;
        this.qtd_prod = qtd_prod;
        this.preco_prod = preco_prod;
        this.fabr_prod = fabr_prod;
        this.pr_ativo = pr_ativo;
        this.dos_prod = dos_prod;
        this.status_prod = status_prod;
    }
    
    public Produto(){
        
    }

    public String getCod_prod() {
        return cod_prod;
    }

    public void setCod_prod(String cod_prod) {
        this.cod_prod = cod_prod;
    }

    public String getNome_prod() {
        return nome_prod;
    }

    public void setNome_prod(String nome_prod) {
        this.nome_prod = nome_prod;
    }

    public int getQtd_prod() {
        return qtd_prod;
    }

    public void setQtd_prod(int qtd_prod) {
        this.qtd_prod = qtd_prod;
    }

    public float getPreco_prod() {
        return preco_prod;
    }

    public void setPreco_prod(float preco_prod) {
        this.preco_prod = preco_prod;
    }

    public String getFabr_prod() {
        return fabr_prod;
    }

    public void setFabr_prod(String fabr_prod) {
        this.fabr_prod = fabr_prod;
    }

    public String getPr_ativo() {
        return pr_ativo;
    }

    public void setPr_ativo(String pr_ativo) {
        this.pr_ativo = pr_ativo;
    }

    public String getDos_prod() {
        return dos_prod;
    }

    public void setDos_prod(String dos_prod) {
        this.dos_prod = dos_prod;
    }

    public String getStatus_prod() {
        return status_prod;
    }

    public void setStatus_prod(String status_prod) {
        this.status_prod = status_prod;
    }    
}