package org.victor;

public class Main4 {
    public static void main(String[] args) throws InterruptedException {

        Thread cozinheiro = new Thread(
                new Pedido("Pizza"), "Cozinheiro"
        );

        Thread atendente = new Thread(
                new Pedido("Suco"), "Atendente"
        );

        Thread auxiliar = new Thread(
                new Pedido("Batata"), "Auxiliar"
        );

        cozinheiro.start();
        atendente.start();
        auxiliar.start();

        cozinheiro.join();
        atendente.join();
        auxiliar.join();

        System.out.println("Todos os pedidos terminaram!");
    }
}
