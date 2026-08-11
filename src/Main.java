public class Main {
    public static void main(String[] args) {
        float subtotal = 80;
        float distancia = 5;

        RegraNegocio calcular = new RegraNegocio();
        System.out.println(calcular.calcularFreteFormatado(subtotal, distancia));
    }
}