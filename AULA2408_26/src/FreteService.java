public class FreteService {

    private static final double BASE_POR_KM = 1.20;
    private static final double EXCESSO_PESO_LIMITEKG = 5.0;
    private static final double EXCESSO_PESO_TAXA_POR_KG = 2.0;
    private static final double TAXA_FRAGIL = 15;
    private static final double MULTIPLICADOR_EXPRESSO = 1.5;
    private static final double MINIMO = 10;
    private static final double MAXIMO = 300;

    public double calcularFrete(Pedido pedido){
        // Valor total do Frete do Pedido
        double total = 0.0;

        // Regra 1: Validar dados de entrada
        validar(pedido);

        //Regra 2: Calcular o valor com base na distãncia percorrida

        total += pedido.getDistanciaKm() * BASE_POR_KM;

        //Regra 3: Calcular o valor com base no excesso de peso
        if(pedido.getPesoKg() >  EXCESSO_PESO_LIMITEKG){
            double excesso = pedido.getPesoKg() - EXCESSO_PESO_LIMITEKG;
            total += excesso * EXCESSO_PESO_LIMITEKG;
        }

        //Regra 4: Verificar se o produto é fragil
        if(pedido.isFragil()){
            total += TAXA_FRAGIL;
        }

        //Regra 5: Verifico se o tipo de frete é expresso
        if(pedido.isExpresso()){
            total *= MULTIPLICADOR_EXPRESSO;
        }

        //Regra 6: Piso/teto -> valor minimo e valor maximo de frete
        total = Math.max(MINIMO,Math.min(MAXIMO,total));

        //Regra 7: Frete Gratis valor > 200 e distancia for menor ou igual a 20km e nao for frete gratis
        if(!pedido.isExpresso() && pedido.getValorItem() >= 200.0 && pedido.getDistanciaKm() <= 20){
            return 0.0;
        }

        return total;
    }

    private void validar(Pedido pedido) {
        // Regras referente a distãncia e ao peso

        if(pedido.getDistanciaKm() < 0) throw new IllegalArgumentException("Distancia nao pode ser negativa");
        if(pedido.getPesoKg() < 0) throw new IllegalArgumentException("Peso nao pode ser negativo ou menor que zero");
        if(pedido.getValorItem() < 0) throw new IllegalArgumentException("O valor dos itens nao pode ser negativo");
    }
}
