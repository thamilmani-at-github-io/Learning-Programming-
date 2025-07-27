using System;

namespace ExceptionHandlingProgram
{
    class DivNumber
    {
        int result;
        public DivNumber()
        {
            result = 0;
        }

        public void division(int n1,int n2)
        {
            try
            {
                result = n1 / n2;
            }
            catch(Exception ex)
            {
                Console.WriteLine("Exception : {0}",ex);
            }
            finally
            {
                Console.WriteLine("Result : {0}",result);
            }
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            DivNumber obj = new DivNumber();
            obj.division(10,0);
            Console.ReadKey();
        }
    }
}
