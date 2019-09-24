/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

/**
 *
 * @author rssobreira
 */
public class ItemCarrinho {
    private int codprod;
    private String prod;
    private int qtd;
    private double valor;

    /**
     * @return the codprod
     */
    public int getCodprod() {
        return codprod;
    }

    /**
     * @param codprod the codprod to set
     */
    public void setCodprod(int codprod) {
        this.codprod = codprod;
    }

    /**
     * @return the prod
     */
    public String getProd() {
        return prod;
    }

    /**
     * @param prod the prod to set
     */
    public void setProd(String prod) {
        this.prod = prod;
    }

    /**
     * @return the qtd
     */
    public int getQtd() {
        return qtd;
    }

    /**
     * @param qtd the qtd to set
     */
    public void setQtd(int qtd) {
        this.qtd = qtd;
    }

    /**
     * @return the valor
     */
    public double getValor() {
        return valor;
    }

    /**
     * @param valor the valor to set
     */
    public void setValor(double valor) {
        this.valor = valor;
    }
    
}
