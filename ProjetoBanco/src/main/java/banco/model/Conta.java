package banco.model;

import java.util.ArrayList;
import java.util.List;

public class Conta {
    private String agencia;
    private String numeroConta;
    private String tipoConta;
    private double saldo;
    private Pessoa titular;
    private List<String> historico = new ArrayList<>();

    public Conta(String agencia, String numeroConta, String tipoConta, double saldo, Pessoa titular) {
        this.agencia = agencia;
        this.numeroConta = numeroConta;
        this.tipoConta = tipoConta;
        this.saldo = saldo;
        this.titular = titular;
        historico.add("Conta criada com saldo inicial: R$" + saldo);
    }

    public String getAgencia() {
        return agencia;
    }

    public String getNumeroConta() {
        return numeroConta;
    }

    public String getTipoConta() {
        return tipoConta;
    }

    public double getSaldo() {
        return saldo;
    }

    public Pessoa getTitular() {
        return titular;
    }

    public List<String> getHistorico() {
        return historico;
    }

    public void setAgencia(String agencia) {
        this.agencia = agencia;
    }

    public void setNumeroConta(String numeroConta) {
        this.numeroConta = numeroConta;
    }

    public void setTipoConta(String tipoConta) {
        this.tipoConta = tipoConta;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    public void setTitular(Pessoa titular) {
        this.titular = titular;
    }

    public void addHistorico(String evento) {
        this.historico.add(evento);
    }
}
