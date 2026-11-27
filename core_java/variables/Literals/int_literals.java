class int_literals
{
    public static void main(String args[])
    {
        //Decimal literal (base 10) uses digits 0-9
        int num=100;
        System.out.println(num);

        //octal literal (base 8) uses digits 0-7 and is prefixed with 0
        int num1=0146;
        System.out.println(num1);


        //Hexadecimal literal (base 16) uses digits 0-9 and letters A-F and is prefixed with 0x
        int num2=0x12A;
        System.out.println(num2);

        //Binary literal (base 2) uses digits 0 and 1 and is prefixed with 0b
        int num3=0b1101;
        System.out.println(num3);
    }
}