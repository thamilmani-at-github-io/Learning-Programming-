using System;

namespace PythagoreanProgram
{
    class Triplet
    {
        private bool flag;
        protected bool process(int a,int b,int c)
        {
            flag = true;
            if (!(a < b && b < c))
            {
                flag = false;
            }
            else if (((a * a) + (b * b)) != (c * c))
            {
                flag = false;
            }
            else if ((a + b + c) != 1000)
            {
                flag = false;
            }            
            return flag;
        }
    }
    class pythogorean:Triplet
    {
        public void output()
        {            
            bool flag;
            for(int i = 1; i <= 1000; i++)
            {
                for(int j = 1; j <= 1000; j++)
                {
                    for(int k = 1; k <= 1000; k++)
                    {
                        flag = process(i,j,k);
                        if (flag == true)
                        {
                            Console.WriteLine("a={0},b={1},c={2},abc={3}",i,j,k,i*j*k);
                        }
                    }
                }
            }
        }
    }
    class Program: pythogorean
    {
        static void Main(string[] args)
        {
            pythogorean obj = new pythogorean();
            obj.output();
            Console.ReadKey();
        }
    }
}
