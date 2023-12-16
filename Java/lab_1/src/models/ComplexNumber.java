package models;

public class ComplexNumber {
    private double real  = 0 , imag = 0;

    public ComplexNumber(){
        this.real = 0;
        this.imag = 0;
    }

    public  ComplexNumber(double real){
        this.real = real;
        this.imag = 0;
    }

    public  ComplexNumber(double real,double imag){
        this.real = real;
        this.imag = imag;
    }

    public void setImag(double imag){
        this.imag = imag;
    }

    public double getImag(){
        return imag;
    }

    public void setReal(double real){
        this.real = real;
    }

    public double getReal(){
        return real;
    }

    public static ComplexNumber sum(ComplexNumber num_1, ComplexNumber num_2){
        return new ComplexNumber((num_1.real+num_2.real),(num_1.imag+num_2.imag));
    }

    public static ComplexNumber mult(ComplexNumber num_1, ComplexNumber num_2){
        return new ComplexNumber((num_1.real * num_2.real - num_1.imag * num_2.imag),
                (num_1.imag * num_2.real + num_1.real * num_2.imag));
    }
    public void show() {
        if (getImag() == 0) {
            System.out.print(getReal() + " ");
        } else if (getReal() == 0) {
            System.out.print(getImag() + "i ");
        } else {
            if (getImag() < 0) {
                System.out.print(getReal());
                System.out.print(getImag() + "i ");
            } else {
                System.out.print(getReal() + "+" + getImag() + "i ");
            }

        }
    }

    public void show_Trigonometric(){
        double z = Math.sqrt(Math.pow(this.real,2)+Math.pow(this.imag,2));
        double a1 = this.real/z;
        double b1 = this.imag/z;
        if (b1 > 0) {
            System.out.format("%.3f(%.3f + %.3f)%n", z, a1, b1);
        }
        else {
            System.out.format("%.3f(%.3f - %.3f)%n", z, a1, (-b1));
        }
    }

}

