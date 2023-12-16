package ui;


import provider.Provider;

public class Chouse_menu {
    public static void chouse_menu(int n) throws InterruptedException {
        switch (n){
            case 1:
                Provider.get_info();
                break;
            case 2:
                Provider.work();
                break;
        }
    }
}
