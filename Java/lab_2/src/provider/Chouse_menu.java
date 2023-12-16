package provider;

import model.File;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

public class Chouse_menu {

    public static void chouse_menu(int n) throws IOException {
        switch (n){
            case 1:
                File.check();
                break;
            case 2:
                File.read();
                break;
            case 3:
                File.write();
                break;

        }
    }
}
