package model.Thread;
import model.Home;
import model.Request;
import java.util.concurrent.ThreadLocalRandom;

public class PassengerSits extends Thread {
    @Override
    public void run() {
        while (Home.work == true){
            try {

                int current_flour = ThreadLocalRandom.current().nextInt(1, Home.count_flours + 1);
                int direction_flour = ThreadLocalRandom.current().nextInt(1, Home.count_flours + 1);

                Request.addPassager(current_flour,direction_flour);
                sleep(4000);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }

    }
}
