public class Main {
    public static void main(String[] args){
        Pedido pedido1 = new Pedido(
                10,
                -1,
                10,
                true,
                true
        );
        //new FreteService().calcularFrete(pedido1);
        Pedido padrao = new Pedido(150.0, 30.0, 5.5, false, false);
        Pedido fragil = new Pedido(80.0, 10.0, 8.0, true, false);
        Pedido expresso = new Pedido(90.0, 9.0, 2.0, false, true);
        Pedido gratis = new Pedido(250.0, 15.0, 3.0, false, true);

        FreteService fs = new FreteService();
        System.out.println("Frete padrao " + fs.calcularFrete(padrao));
        System.out.println("Frete frágil " + fs.calcularFrete(fragil));
        System.out.println("Frete expresso " + fs.calcularFrete(expresso));
        System.out.println("Frete gratis " + fs.calcularFrete(gratis));
    }
}
