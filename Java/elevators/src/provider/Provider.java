package provider;

import model.Home;
import model.Request;


import java.util.Scanner;

import static java.lang.Thread.sleep;


public class Provider extends Home {
    public Provider(int count_flours) {
        super(count_flours);
    }

    // заполнение параметров
    public static void get_info(){
        System.out.println("Введите количетво этажей (от 15 до 20):");
        Scanner in = new Scanner(System.in);
        try {
            int count_flours = in.nextInt();
            if (count_flours <= 20 && count_flours >= 15 ){
                new Home(count_flours);
                System.out.println("Успешно \nКоличество этажей " + Home.count_flours);
            }
            else{
                System.out.println("Таких этажей нет" );
            }

        }
        catch (IndexOutOfBoundsException e){
            System.out.println("Введен не верный формат");
        }
    }
    // процесс работы
    public static void work() throws InterruptedException {
        System.out.println("Добро пожаловать в дом " +
                "\n Вы находитесь на первом этаже и смотрите за работой лифта " +
                "\n Каждые 10 вызовов вы можете уволиться или продолжить " +
                "\n Для выбора используются числа 1 - увольнение, 0 - остаться"+
                "\n----------------------------------------------------------" );

        Voids.startGeneration();
        sleep(5000);
        Voids.goFirst();
//        if ((!Request.DownDirection.isEmpty() && !Request.DownDirection.isEmpty()) && Home.active_first){
//            Voids.goSecond();
//        }
        String chouse = "0";
        chouse = Voids.getChouse();
        if (chouse == "1") {
            Home.notWork();
        }


    }


}
