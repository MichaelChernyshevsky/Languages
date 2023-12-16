package model;

import java.util.*;
import java.util.concurrent.ThreadLocalRandom;

public class Request extends Home {
    public static Queue<Person>  UpDirection   = new LinkedList<Person>();;
    public static Queue<Person> DownDirection   = new LinkedList<Person>();;


    public Request(int count_flours) {
        super(count_flours);
        this.count_flours = count_flours;
    }

    public static void addPassager(int current_flour, int direction_flour){
        if (current_flour < direction_flour) {

            UpDirection.add(new Person(current_flour,direction_flour));
        } else if (current_flour > direction_flour){

            DownDirection.add(new Person(current_flour,direction_flour));
        }
    }

}

