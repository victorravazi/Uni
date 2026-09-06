public class Main {
    public static void main(String[] args) {
        Singleton obj1 = Singleton.getInstance();
        Singleton obj2 = Singleton.getInstance();

        obj1.printMsg();

        if(obj2 == obj1){
            System.out.println("Os objetos sao iguais");
        }else{
            System.out.println("os objetos sao diferentes");
        }

    }
}
