package bridge;

public class Carro extends Thread{

    private String origem;
    private Buffer buffer;

    public Carro(String origem, Buffer buffer) {
        this.buffer = buffer;
        this.origem = origem;
    }

    public String getOrigem() {
        return origem;
    }

    @Override
    public void run() {
        try {
            while(!buffer.passar(getId(), origem));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
