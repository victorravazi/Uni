public class Singleton {
    private static Singleton instance;

    private Singleton(){
        System.out.println("Instanciando minha classe Singleton");
    }

    public static Singleton getInstance() {
        if (instance == null){
            return instance = new Singleton();
        }
        return instance;
    }

    public void printMsg(){
        System.out.println("Ola Singleton");
    }

}



