package bridge;

public class Ponte {
    Buffer buffer;

    public Ponte() {
        this.buffer = new Buffer();
    }

    public void carro(String origem) throws InterruptedException {
        Carro c = new Carro(origem, buffer);
        buffer.getInLine(c.getId(), c.getOrigem());
        c.start();
    }
}
