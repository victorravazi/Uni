package org.victor;

public class Main3 {
    public static void main(String[] args) {

        Pedido hamburguer = new Pedido("Hamburguer");
        Pedido suco = new Pedido("suco");

        Thread cozinheiro = new Thread(
                hamburguer, "Cozinheiro"
        );

        Thread atendente = new Thread(
                suco, "Atendente"
        );

        cozinheiro.start();
        atendente.start();
        System.out.println("Finalizou");
    }
}
