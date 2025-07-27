using System;

namespace PolymorphismProgram
{
    class Program
    {
        void print(int i,int j)
        {
            Console.WriteLine("Printing Int : {0},{1}", i, j);
        }
        void print(double i)
        {
            Console.WriteLine("Printing Double : {0}", i);
        }
        void print(string n)
        {
            Console.WriteLine("Printing String : {0}",n);
        }
        static void Main(string[] args)
        {
            Program p = new Program();
            p.print(10,22);
            p.print(22.23);
            p.print("hello c#");
            Console.ReadKey();
        }
    }
}
