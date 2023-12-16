package provider;

import model.Home;
import model.Thread.FirstElevator;
import model.Thread.PassengerSits;
import model.Thread.SecondElevator;


import java.util.Scanner;

public class Voids {


    public  static void startGeneration(){
        PassengerSits wait = new PassengerSits ();
        wait.start();
    }
    public  static void goFirst(){
        FirstElevator wait = new FirstElevator();
        wait.start();
        Home.first_active();
    }
    public  static void goSecond(){
        SecondElevator wait = new SecondElevator();
        wait.start();
    }





    public static String getChouse(){
        System.out.println("Делайте выбор: \n0 - продолжить \n1 - уволиться");
        Scanner in = new Scanner(System.in);
        return in.next();
    }

}
