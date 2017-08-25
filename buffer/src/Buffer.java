/**
 * Created by saviofcm on 25/08/17.
 */
public class Buffer {

    private int recurse;


    public synchronized boolean consume(int id, int consumedProduct) throws InterruptedException {
        if (recurse > 0) {
            System.out.println("Consumidor #" + id + " consumiu: produto #" + consumedProduct);
            recurse--;
            notify();
            return true;
        }
        else {
            System.out.println("Consumidor #" + id + " esperando...");
            wait();
            return false;
        }
    }

    public synchronized boolean produce(int id, int producedProduct) throws InterruptedException {
        if (recurse == 0) {
            System.out.println("Produtor #" + id + " colocou produto #" + producedProduct);
            recurse++;
            notify();
            return true;
        }
        else {
            System.out.println("Produtor #" + id + " esperando...");
            wait();
            return false;
        }
    }
}
