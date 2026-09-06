package org.proxy;

// Interface comum
interface Imagem {
    void exibir();
}

// Objeto real (pesado para criar)
class ImagemReal implements Imagem {
    private String arquivo;

    public ImagemReal(String arquivo) {
        this.arquivo = arquivo;
        carregarDoDisco();
    }

    private void carregarDoDisco() {
        System.out.println("Carregando " + arquivo);
    }

    public void exibir() {
        System.out.println("Exibindo " + arquivo);
    }
}

class ImagemProxy implements Imagem {
    private ImagemReal imagemReal;
    private String arquivo;

    public ImagemProxy(String arquivo) {
        this.arquivo = arquivo;
    }

    public void exibir() {
        if (imagemReal == null) {
            imagemReal = new ImagemReal(arquivo); // só cria quando precisa
        }
        imagemReal.exibir();
    }
}



