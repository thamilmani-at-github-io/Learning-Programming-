using System;
using System.Collections.Generic;
using System.Linq;

namespace LinqProgram
{
    class dog
    {
        public string Name { get; set; }
        public int Age { get; set; }
    }
    class Program
    {
        static void Main(string[] args)
        {
            string[] words = { "Hello", "WonderFull","LINQ","Beautiful","World" };
            var shortwords = from word in words where word.Length <= 5 select word;
            Console.WriteLine("In The Words Array Word count is less than or equal to 5 : ");
            foreach(string result in shortwords)
            {
                Console.WriteLine(result);
            }

            Console.Write("\nThe Number are : ");
            List<int> Number = new List<int>() { 1,2,3,4,5,6};
            Number.ForEach(x=> Console.Write(x+" "));
            
            Console.Write("\nOdd Numbers By Using where Clause : ");
            List<int> oddNumbers = Number.Where(x=>x%2==1).ToList();
            foreach(int n in oddNumbers)
            {
                Console.Write(n+" ");
            }

            Console.Write("\nEven Numbers By Using FindAll : ");
            List<int> EvenNumbers = Number.FindAll(x => x % 2 == 0).ToList();
            foreach (int n in EvenNumbers)
            {
                Console.Write(n+" ");
            }

            List<dog> dog = new List<dog>()
            {
                new dog{Name="Rex",Age=4},
                new dog{Name="Sean",Age=0},
                new dog{Name="Stacy",Age=3}
            };

            Console.Write("\nDogName are : ");
            var names = dog.Select(x=>x.Name);
            foreach(string name in names)
            {
                Console.Write(name+" ");
            }

            Console.WriteLine("\nSorted the DogName Based on Age : ");
            List<dog> sortedDogs = dog.OrderByDescending(x => x.Age).ToList();
            sortedDogs.ForEach(x => Console.WriteLine(x.Name+" "+x.Age));
            Console.ReadKey();
        }
    }
}
