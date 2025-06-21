using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _1DataType
{
    class Program
    {
        static void Main(string[] args)
        {
            int a = 10;
            int b = 20;
            int c = a + b;
            Console.WriteLine("Int : "+c);

            long a1 = 10;
            long b1 = 20;
            long c1 = a1 + b1;
            Console.WriteLine("Long : " + c1);

            float m = 3.14f;
            float n = 2.34f;
            float o = m + n;
            Console.WriteLine("Float : " + o);

            double p = 12.34323345;
            double q = 19.343233457269;
            double r = p + q;
            Console.WriteLine("Double : " + r);
            Console.ReadLine();

        }
    }
}
