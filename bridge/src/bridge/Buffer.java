package bridge;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

import static java.lang.Thread.sleep;

public class Buffer {
    private String currentFlow;
    private Map<Long,String> queue;

    public Buffer() {
        this.queue = new HashMap<>();
    }

    public synchronized boolean passar(long id, String origem) throws InterruptedException {
        if (currentFlow == null)
            currentFlow = origem;

        if (isAvailable(origem)) {
            System.out.println("Passando carro " + getTrajeto(origem));
            currentFlow = origem;
            queue.remove(id);
            return true;
        }

        Thread.sleep(2000L);
        return false;
    }

    public boolean isAvailable(String origem) {
        return origem.equals(currentFlow) || !queue.containsValue(currentFlow);
    }

    private String getTrajeto(String origem) {
        return origem.equals("A") ? "A --> B" : "B --> A";
    }

    public void getInLine(long id, String origem) {
        queue.putIfAbsent(id, origem);
    }
}
