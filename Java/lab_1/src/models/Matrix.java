package models;

public class Matrix {
    private final int row , column;
    private ComplexNumber[][] matrix;

    public Matrix(int row,int column){
        this.row=row;
        this.column=column;
        matrix = new ComplexNumber[row][column];
    }
    public int row(){
        return row;
    }
    public int column(){
        return column;
    }
    public void set_element(ComplexNumber num, int row, int column){
        matrix[row][column] = num;
    }
    public ComplexNumber get_element(int row, int column){
        return matrix[row][column];
    }
    public static Matrix add_up(Matrix matrix1, Matrix matrix2){
        Matrix sum = new Matrix(matrix1.row(), matrix1.column());
        for(int i=0;i<matrix1.row();i++){
            for(int j=0;j< matrix1.column();j++){
                sum.set_element(ComplexNumber.sum(matrix1.get_element(i,j),matrix2.get_element(i,j)),i,j);
            }
        }
        return sum;
    }
    public static ComplexNumber mult_element(Matrix matrix, int row, int column){
        ComplexNumber element = new ComplexNumber();
        int row_m1 = row, column_m2 = column,column_m1 = 0 , row_m2 = 0;
        while (column_m1<matrix.column() && row_m2< matrix.row()){
            element = ComplexNumber.sum(element,ComplexNumber.mult(matrix.get_element(row_m1,column_m1),matrix.get_element(row_m2,column_m2)));
            column_m1++; row_m2++;
        }
        return element;

    }
    public static Matrix mult_matrices(Matrix matrix_1, Matrix matrix_2){
        Matrix temp = new Matrix(matrix_1.row(), matrix_2.column());
        for(int i=0;i<matrix_1.row();i++){
            for(int j=0;j< matrix_2.column();j++){
                temp.set_element(mult_element(matrix_2,i,j),i,j);
            }
        }
        return  temp;
    }
    public Matrix transpose(){
        Matrix temp = new Matrix(column(),row());
        for(int i=0;i<row();i++){
            for(int j=0;j<column();j++){
                temp.set_element(get_element(i,j),j,i);
            }
        }
        return temp;
    }
}


