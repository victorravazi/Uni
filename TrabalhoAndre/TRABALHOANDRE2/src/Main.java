public class Main {
    public static void main(String[] args) {
        float subtotal = 80;
        float distancia = 5;

        RegraNegocio calculadora = new RegraNegocio();
        System.out.println(calculadora.calcularFreteFormatado(subtotal, distancia));
    }
}