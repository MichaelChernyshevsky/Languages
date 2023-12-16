package ui;

import models.ComplexNumber;
import models.Matrix;
import provider.Chouse_menu;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.concurrent.TimeUnit;

public class konsole_menu {
    public void create() throws InterruptedException {
        System.out.print("Привет, это приложение для работы с комплексными числами. Сейчас вы перейдете в меню.\n");
        TimeUnit.SECONDS.sleep(1);
        _create();
    }
    public void _create(){
        Scanner in = new Scanner(System.in);
        ArrayList<ComplexNumber> numbers = new ArrayList<>();
        ArrayList<Matrix> matrices = new ArrayList<>();
        int menu_chouse;
        do {
            System.out.print("\n----------------------------------------------------------" +
                    "\n 1 - Создать комплексное число " +
                    "\n 2 - Показать комплексное число " +
                    "\n 3 - Cложить числа " +
                    "\n 4 - Перемножить числа" +
                    "\n 5 - Показать комплексные числа в тригонометрической форме " +
                    "\n 6 - Создание матрицы" +
                    "\n 7 - Список матриц " +
                    "\n 8 - Показать матрицу" +
                    "\n 9 - Сложение матриц" +
                    "\n 10 - Перемножение матриц" +
                    "\n 11 - Transpose " +
                    "\n 12 - Выход " +
                    "\n----------------------------------------------------------\n");
            menu_chouse = in.nextInt();

            if (menu_chouse<=12){
                if (menu_chouse==12){
                    continue;
                }
                else{
                    Chouse_menu._chouse_menu(menu_chouse,numbers,matrices);
                }
            } else {
                System.out.println("Error");
            }
        } while (menu_chouse != 12);
    }
}
