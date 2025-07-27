using System;

namespace InterfaceProgram
{
    interface ITransactions
    {
        public void showTransactions();
    }
    class Transactions : ITransactions
    {
        string ICode, Date;
        double Amount;
        public Transactions()
        {
            ICode = "";
            Date = "";
            Amount = 0;
        }
        public Transactions(string Icode, string Date, double Amount)
        {
            this.ICode = ICode;
            this.Date = Date;
            this.Amount = Amount;
        }
        public void showTransactions()
        {
            Console.WriteLine("ICode : {0}",ICode);
            Console.WriteLine("Date : {0}", Date);
            Console.WriteLine("Amount : {0}", Amount);
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            Transactions t = new Transactions();
            t.showTransactions();
            Transactions t1 = new Transactions("I001","27-07-2025",1000);
            t1.showTransactions();
            Console.ReadKey();
        }
    }
}
