public class Pedido {
    private double valorItem;
    private double distanciaKm;
    private double pesoKg;
    private boolean fragil;
    private boolean expresso;

    public Pedido(
            double valorItem,
            double distanciaKm,
            double pesoKg,
            boolean fragil,
            boolean expresso) {
        this.valorItem = valorItem;
        this.distanciaKm = distanciaKm;
        this.pesoKg = pesoKg;
        this.fragil = fragil;
        this.expresso = expresso;
    }

    public double getValorItem() {
        return valorItem;
    }

    public void setValorItem(double valorItem) {
        this.valorItem = valorItem;
    }

    public double getDistanciaKm() {
        return distanciaKm;
    }

    public void setDistanciaKm(double distanciaKm) {
        this.distanciaKm = distanciaKm;
    }

    public double getPesoKg() {
        return pesoKg;
    }

    public void setPesoKg(double pesoKg) {
        this.pesoKg = pesoKg;
    }

    public boolean isFragil() {
        return fragil;
    }

    public void setFragil(boolean fragil) {
        this.fragil = fragil;
    }

    public boolean isExpresso() {
        return expresso;
    }

    public void setExpresso(boolean expresso) {
        this.expresso = expresso;
    }
}
