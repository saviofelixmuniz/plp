package bridge;

public class main {
    public static void main(String[] args) {
        Ponte p = new Ponte();
        try {
            p.carro("B");
            p.carro("A");
            p.carro("B");
            p.carro("A");
            p.carro("B");
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
