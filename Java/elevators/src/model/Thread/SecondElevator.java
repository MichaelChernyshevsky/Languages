package model.Thread;

import model.Person;

import java.util.*;


import static model.Home.*;
import static model.Request.DownDirection;
import static model.Request.UpDirection;

public class SecondElevator extends Thread {


    //    Queue<Integer> direction = new LinkedList<Integer>();
    static List<Integer> direction = new ArrayList<Integer>() ;


    public static int elevator = 1;

    public static void increment() {
        elevator += 1;
    }

    public static void decrement() {
        elevator -= 1;
    }

    public static int maxElement() {
        int maxElement = -1;

        for (int i = 0; i < direction.size() ; i++) {
            if (direction.get(i) > maxElement) {
                maxElement = direction.get(i);
            }
        }
        return maxElement;
    }

    public static int minElement() {
        int minElement = 100;

        for (int i = 0; i < direction.size() ; i++) {
            if (direction.get(i) < minElement) {
                minElement = direction.get(i);
            }
        }
        return minElement;
    }




    @Override
    public void run() {


        while (work == true) {
            System.out.println("\n----------------------------------------------------------" );
            System.out.println("2 лифт на " + elevator + " этаже");
            System.out.println(UpDirection);
            System.out.println(DownDirection);


            try {
                // запуск и случай когда лифт на первом этаже


                if (direction.isEmpty()) {

                    // забираем пассажира
                    Person person = null;
                    if (!UpDirection.isEmpty()) {
                        person = UpDirection.peek();
                        UpDirection.remove();
                    } else if (!DownDirection.isEmpty()) {
                        person = DownDirection.peek();
                        DownDirection.remove();

                    }

                    // задаем этажи остановки
                    if (person.current_flour != elevator) {
                        direction.add(person.current_flour);
                        direction.add(person.direction_flour);
                    } else if (person.current_flour == elevator) {
                        direction.add(person.current_flour);
                    }
                    // выбираем движение нашего лифта
                    if (person.current_flour >= elevator) {
                        increment();
                        sleep(1500);
                    } else  {
                        decrement();
                        sleep(1500);
                    }
                }
                // лифт в движении
                else {
                    int maxFlour = maxElement();
                    int minFlour = minElement();
                    System.out.println("макс  " + maxFlour + " мин " + minFlour );




                    // очищаем остановку на этаже
                    for (int index = 0; index < direction.size(); index++){
                        if(direction.get(index) == elevator){
                            direction.removeAll(Arrays.asList(elevator));
                            sleep(1500);
                        }
                    }



                    // движение вверх
                    if (elevator < maxFlour) {

                        if (!UpDirection.isEmpty()) {
                            Person person = UpDirection.peek();
                            if ( person.current_flour < person.direction_flour){
                                if (person.current_flour >= elevator) {
                                    if (person.current_flour == elevator) {
                                        sleep(1500);
                                    }
                                    direction.add(person.current_flour);
                                    direction.add(person.direction_flour);
                                    UpDirection.remove();
                                }
                            }

                        }
                        System.out.println("увеличиваем этаж");

                        increment();
                        sleep(1500);
                    }

                    // движение вниз
                    else if ( elevator > minFlour) {

                        if ( !DownDirection.isEmpty()) {
                            Person person = UpDirection.peek();

                            if (person.current_flour > person.direction_flour){
                                if (person.current_flour <= elevator) {
                                    if (person.current_flour == elevator) {
                                        sleep(1500);
                                    }
                                    direction.add(person.current_flour);
                                    direction.add(person.direction_flour);
                                    DownDirection.remove();
                                }
                            }

                        }
                        System.out.println("уменьшаем этаж");
                        decrement();
                        sleep(1500);
                    }

                }

            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }

    }


}
