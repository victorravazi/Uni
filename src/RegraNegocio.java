public class RegraNegocio {

    private static final float VALOR_MINIMO_FRETE_GRATIS = 100;
    private static final float DISTANCIA_LIMITE_CURTA = 3;
    private static final float DISTANCIA_LIMITE_MEDIA = 6;

    private static final float FRETE_CURTO = 6.99f;
    private static final float FRETE_MEDIO = 9.99f;
    private static final float FRETE_LONGO = 14.99f;

    public float calcularFrete(float subtotal, float distancia) {
        if (subtotal >= VALOR_MINIMO_FRETE_GRATIS) {
            return 0;
        } else if (distancia <= DISTANCIA_LIMITE_CURTA) {
            return FRETE_CURTO;
        } else if (distancia > DISTANCIA_LIMITE_CURTA && distancia < DISTANCIA_LIMITE_MEDIA) {
            return FRETE_MEDIO;
        } else if (distancia > DISTANCIA_LIMITE_MEDIA) {
            return FRETE_LONGO;
        }

        throw new IllegalArgumentException("Não foi possível calcular o frete para os valores informados.");
    }

    public String calcularFreteFormatado(float subtotal, float distancia) {
        float valor = calcularFrete(subtotal, distancia);
        return valor == 0 ? "FRETE GRATIS" : "Frete = " + valor;
    }
}