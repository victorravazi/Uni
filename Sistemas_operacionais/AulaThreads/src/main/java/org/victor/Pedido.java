package org.victor;

public class Pedido implements Runnable {

    private final String nome;

    public Pedido(String nome) {
        this.nome = nome;
    }

    @Override
    public void run(){

        for(int etapa = 1; etapa <= 3; etapa++){
            System.out.println(
                    Thread.currentThread().getName()
                    + " | " + nome
                    + " | " + etapa
            );
            try{
                Thread.sleep(1000);
            }catch (InterruptedException e){
                Thread.currentThread().interrupt();
                return;
            }
        }
        System.out.println(nome + " pronto!");
    }
}
