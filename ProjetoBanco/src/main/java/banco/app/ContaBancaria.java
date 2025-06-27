package banco.app;

import banco.dao.ContaDAO;
import banco.model.Conta;
import banco.model.Pessoa;

import java.util.Scanner;

public class ContaBancaria {
    // Em vez da lista estática, vamos instanciar um DAO:
    private static final ContaDAO dao = new ContaDAO();

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Conta contaAtual = null;

        while (true) {
            System.out.println("\n=== Banco Digital ===");
            System.out.println("1 - Login");
            System.out.println("2 - Sair");
            System.out.print("Escolha uma opção: ");
            int op = scanner.nextInt();
            scanner.nextLine();

            if (op == 1) {
                contaAtual = autenticarConta(scanner);
                if (contaAtual == null) {
                    System.out.println("Login falhou.");
                    continue;
                }
                menuConta(scanner, contaAtual);
            }
            else if (op == 2) {
                System.out.println("Saindo...");
                break;
            }
            else {
                System.out.println("Opção inválida.");
            }
        }
        scanner.close();
    }

    static Conta autenticarConta(Scanner scanner) {
        System.out.println("=== Login ===");
        for (int tentativas = 0; tentativas < 3; tentativas++) {
            System.out.print("CPF (apenas números): ");
            String cpf = scanner.nextLine().replaceAll("\\D", "");
            System.out.print("Número da conta: ");
            String numeroConta = scanner.nextLine().replaceAll("\\D", "");
            System.out.print("Senha: ");
            String senha = scanner.nextLine();

            // Usamos o DAO para buscar:
            Conta conta = dao.buscarPorCpfEConta(cpf, numeroConta);
            if (conta != null && conta.getTitular().getSenha().equals(senha)) {
                return conta;
            }
            System.out.println("Dados inválidos. Tente novamente.\n");
        }
        return null;
    }

    static void menuConta(Scanner scanner, Conta contaAtual) {
        while (true) {
            System.out.println("\nBem-vindo, " + contaAtual.getTitular().getNome() + "!");
            System.out.printf("Saldo atual: R$%.2f%n", contaAtual.getSaldo());
            System.out.println("1 - Consultar Saldo");
            System.out.println("2 - Sair");
            System.out.print("Digite a opção desejada: ");
            int opcao = scanner.nextInt();
            scanner.nextLine();

            if (opcao == 1) {
                System.out.printf("Saldo: R$%.2f%n", contaAtual.getSaldo());
            }
            else if (opcao == 2) {
                return;
            }
            else {
                System.out.println("Opção inválida.");
            }
        }
    }
}
