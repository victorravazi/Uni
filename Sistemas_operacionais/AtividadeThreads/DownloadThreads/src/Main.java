public class Main {

    public static void main(String[] args) {

        Thread download1 = new Thread(
                new DownloadArquivo("Arquivo 1", 50)
        );

        Thread download2 = new Thread(
                new DownloadArquivo("Arquivo 2", 100)
        );

        Thread download3 = new Thread(
                new DownloadArquivo("Arquivo 3", 150)
        );

        Thread download4 = new Thread(
                new DownloadArquivo("Arquivo 4", 200)
        );

        Thread download5 = new Thread(
                new DownloadArquivo("Arquivo 5", 250)
        );

        download1.start();
        download2.start();
        download3.start();
        download4.start();
        download5.start();

        try {

            download1.join();
            download2.join();
            download3.join();
            download4.join();
            download5.join();

        } catch (InterruptedException e) {
            System.out.println("Thread principal interrompida.");
        }

        System.out.println("Todos os downloads foram concluídos!");
    }
}