/**
 * Created by saviofcm on 25/08/17.
 */
public class Produtor extends Thread{
    int id;
    Buffer buffer;
    int producao;

    public Buffer getBuffer() {
        return buffer;
    }

    public void setBuffer(Buffer buffer) {
        this.buffer = buffer;
    }

    public int getProducao() {
        return producao;
    }

    public void setProducao(int producao) {
        this.producao = producao;
    }

    public Produtor(int id, Buffer buffer, int producao) {
        this.id = id;
        this.buffer = buffer;
        this.producao = producao;
    }

    @Override
    public void run() {
        for (int i = 1; i <= producao; i++) {
            try {
                while(!buffer.produce(id, i));
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        System.out.println("Produtor #" + id + " concluido!");
    }
}
