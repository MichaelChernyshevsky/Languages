package provider;
import models.ComplexNumber;
import models.Matrix;
import java.util.ArrayList;
import java.util.Scanner;
public class Foo {
    Scanner in = new Scanner(System.in);
    void Creating_number(ArrayList<ComplexNumber> numbers) {
        double real, imaginary;
        System.out.println("Введите действительную и мнимую часть");
        real = in.nextDouble();
        imaginary = in.nextDouble();
        numbers.add(new ComplexNumber(real, imaginary));
    }
    void Show_number(ArrayList<ComplexNumber> numbers) {
        System.out.println(numbers);
        if (numbers.size() == 0) {
            System.out.println("Чисел нет");
        } else {
            int i = 1;
            for (ComplexNumber num : numbers) {
                System.out.print(i++ + ") ");
                num.show();
            }
        }
    }
    void Sum_numbers(ArrayList<ComplexNumber> numbers) {
        if (numbers.size() < 2) { System.out.println("Необходимо два числа");
        } else {
            System.out.println("Выберите числа для сложения");
            Show_number(numbers);
            int no_1, no_2;
            no_1 = in.nextInt();
            no_2 = in.nextInt();
            if ((no_1 <= numbers.size()) && (no_2 <= numbers.size())) {
                numbers.add(ComplexNumber.sum(numbers.get(no_1 - 1),numbers.get(no_2 - 1)));
            } else {
                System.out.println("Ошибка");
            }
        }
    }
    void Mult_numbers(ArrayList<ComplexNumber> numbers) {
        if (numbers.size() < 2) {System.out.println("Необходимо два числа");
        } else {
            System.out.println("Выберите числа");
            Show_number(numbers);
            int no_1, no_2;
            no_1 = in.nextInt();
            no_2 = in.nextInt();
            if ((no_1 <= numbers.size()) && (no_2 <= numbers.size())) {
                numbers.add(ComplexNumber.mult(numbers.get(no_1 - 1),numbers.get(no_2 - 1)));
            } else {
                System.out.println("Ошибка");
            }
        }
    }
    void Trigonometric(ArrayList<ComplexNumber> numbers){
        System.out.println("Выберите число ");
        Show_number(numbers);
        int no;
        no = in.nextInt();
        (numbers.get(no-1)).show_Trigonometric();
    }
    void Create_matrix(ArrayList<Matrix> matrices){
        System.out.println("Введите число строк и колонок :");
        int row= in.nextInt();
        int columns = in.nextInt();
        Matrix matrix = new Matrix(row,columns);
        _Foo._create_matrix(matrix);
        matrices.add(matrix);
    }
    void Show_matrices(ArrayList<Matrix> matrices){
        for(int i=0;i<matrices.size();i++){
            System.out.println(i+1+") матрица"+(i+1)+" "+ matrices.get(i).row()+"x"+matrices.get(i).column());
        }
    }
    void Show_matrix(ArrayList<Matrix> matrices){
        System.out.println("Выберите матрицу?");
        Show_matrices(matrices);
        int x;
        x = in.nextInt()-1;
        _Foo._show_matrix(matrices.get(x));
    }
    void Sum_matrices(ArrayList<Matrix> matrices){
        System.out.println("Выберите матрицы ( одинакового размера )");
        Show_matrices(matrices);
        int no_1 = in.nextInt()-1;
        int no_2 = in.nextInt()-1;
        if(matrices.get(no_1).row()!=matrices.get(no_2).row() || matrices.get(no_1).column()!= matrices.get(no_2).column()){
            System.out.println("Ошибка");
        }
        else {
            Matrix temp =Matrix.add_up(matrices.get(no_1),matrices.get(no_2));
            matrices.add(temp);
            _Foo._show_matrix(temp);
        }
    }
    void Mult_matrices(ArrayList<Matrix> matrices){
        System.out.println("Выберите матрицы для умножения");
        Show_matrices(matrices);
        int no_1 = in.nextInt()-1;
        int no_2 = in.nextInt()-1;
        if(matrices.get(no_1).column()!=matrices.get(no_2).row()){
            System.out.println("Их нельзя умножить");
        }
        else {
            Matrix temp = Matrix.mult_matrices(matrices.get(no_1),matrices.get(no_2));
            matrices.add(temp);
            _Foo._show_matrix(temp);
        }
    }
    void Transpose(ArrayList<Matrix> matrices){
        System.out.println("Выберите матрицу");
        Show_matrices(matrices);
        int no = in.nextInt()-1;
        (matrices.get(no)).transpose();

    }


}

class _Foo {
    static void _create_matrix(Matrix matrix) {
        Scanner in = new Scanner(System.in);
        for (int i = 0; i < matrix.row(); i++) {
            for (int j = 0; j < matrix.column(); j++) {
                double real, imag;
                System.out.println("Введите действительную и мнимую часть" +
                        "[" + i + "]" + "[" + j + "]");
                real = in.nextDouble();
                imag = in.nextDouble();
                matrix.set_element(new ComplexNumber(real, imag), i, j);
            }
        }
    }
    static void _show_matrix(Matrix matrix) {
        for (int i = 0; i < matrix.row(); i++) {
            for (int j = 0; j < matrix.column(); j++) {
                matrix.get_element(i,j).show();
            }
        }
    }
}
