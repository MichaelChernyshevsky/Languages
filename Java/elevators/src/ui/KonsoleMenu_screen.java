package ui;

import java.util.InputMismatchException;
import java.util.Scanner;
import java.util.concurrent.TimeUnit;

public class KonsoleMenu_screen {
    public void create() throws InterruptedException {
        System.out.print("Привет, это приложение для работы с пользователяит. Сейчас вы перейдете в меню.\n");
        TimeUnit.SECONDS.sleep(1);
        Scanner in = new Scanner(System.in);
        int menu_chouse;
        do {
            System.out.print("\n----------------------------------------------------------" +
                    "\n 1 - Задать количество этажей  " +
                    "\n 2 - Работа " +
                    "\n 3 - Выход " +
                    "\n----------------------------------------------------------\n");
            try {
                menu_chouse = in.nextInt();
            }
            catch (InputMismatchException e){
                System.out.println("Error! !!!You inputed not a number!!! ");
                menu_chouse = 3;
            }
            Chouse_menu.chouse_menu(menu_chouse);
        } while (menu_chouse != 3);
    }
}
