/**
 * Created by saviofcm on 25/08/17.
 */
public class Consumidor extends Thread {

    int id;
    Buffer buffer;
    int consumo;

    public Consumidor(int id, Buffer buffer, int totalConsumir) {
        this.id = id;
        this.buffer = buffer;
        this.consumo = totalConsumir;
    }

    @Override
    public void run() {
        for (int i = 1; i <= consumo; i++) {
            try {
                while(!buffer.consume(id, i));
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        System.out.println("Consumidor #" + id + " concluido!");
    }
}
