package banco.dao;

import banco.model.Conta;
import banco.model.Pessoa;
import banco.database.Conexao;

import java.sql.*;

public class ContaDAO {
    public Conta buscarPorCpfEConta(String cpf, String numeroConta) {
        String sql = "SELECT c.agencia, c.numeroConta, c.tipoConta, c.saldo, " +
                     "p.nome, p.cpf, p.senha " +
                     "FROM contas c " +
                     "JOIN pessoas p ON c.cpf = p.cpf " +
                     "WHERE p.cpf = ? AND c.numeroConta = ?";

        try (Connection conn = Conexao.conectar();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, cpf);
            stmt.setString(2, numeroConta);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                String agencia = rs.getString("agencia");
                String numConta = rs.getString("numeroConta");
                String tipoConta = rs.getString("tipoConta");
                double saldo = rs.getDouble("saldo");

                String nome = rs.getString("nome");
                String cpfTitular = rs.getString("cpf");
                String senha = rs.getString("senha");

                Pessoa titular = new Pessoa(nome, cpfTitular, senha);

                return new Conta(agencia, numConta, tipoConta, saldo, titular);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
