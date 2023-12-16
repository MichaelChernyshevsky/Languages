package ui;
import java.io.IOException;
import java.util.*;
import java.util.concurrent.TimeUnit;

import provider.Chouse_menu;

public class Konsole_menu {
    public void create() throws InterruptedException, IOException {
        System.out.print("Привет, это приложение для работы с файлами приложениями. Сейчас вы перейдете в меню.\n");
        TimeUnit.SECONDS.sleep(1);
        Scanner in = new Scanner(System.in);
        int menu_chouse;
        do {
            System.out.print("\n----------------------------------------------------------" +
                    "\n 1 - Проверить есть ли  файл " +
                    "\n 2 - Cчитать количество символов " +
                    "\n 3 - Записать результат " +
                    "\n 4 - Выход " +
                    "\n----------------------------------------------------------\n");
            try {
                menu_chouse = in.nextInt();
            }
            catch (InputMismatchException e){
                System.out.println("Error! !!!You inputed not a number!!! ");
                menu_chouse = 4;
            }
            Chouse_menu.chouse_menu(menu_chouse);
        } while (menu_chouse != 4);
    }

}
