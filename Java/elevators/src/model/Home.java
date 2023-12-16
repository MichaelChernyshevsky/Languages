package model;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Home  {
    // about home
    public static int count_flours;

    public static boolean work = true;
    // elevators
    public static boolean active_first = true;
    public static boolean active_second = true;

    public static int second_elevator ;

    public static int second_elevator_directionFlour ;

    public static boolean passager_first;




    public Home(int count_flours){
      this.count_flours = count_flours;
    }


    protected static void notWork(){ work = !work;}

    public static void first_active(){
        active_first = true;
    }
    public static void second_active(){
        active_second = true;
    }






}


