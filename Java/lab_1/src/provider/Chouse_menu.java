package provider;

import models.ComplexNumber;
import models.Matrix;

import java.util.ArrayList;
public class Chouse_menu {
    public static void _chouse_menu(int n, ArrayList<ComplexNumber> numbers, ArrayList<Matrix> matrices){

        Foo foo = new Foo();

        switch (n){
           case 1:
               foo.Creating_number(numbers);
               break;
           case 2:
               foo.Show_number(numbers);
               break;
           case 3:
               foo.Sum_numbers(numbers);
               break;
           case 4:
               foo.Mult_numbers(numbers);
               break;
           case 5:
               foo.Trigonometric(numbers);
               break;
           case 6:
               foo.Create_matrix(matrices);
               break;
           case 7:
               foo.Show_matrices(matrices);
               break;
           case 8:
               foo.Show_matrix(matrices);
               break;
           case 9:
               foo.Sum_matrices(matrices);
               break;
           case 10:
               foo.Mult_matrices(matrices);
               break;
           case 11:
               foo.Transpose(matrices);
               break;
        }
    }

}

