using System;

namespace OperatorOverloading
{
    class Box
    {
        private double length;
        private double breadth;
        private double height;

        public Box(double length = 1, double breadth = 1, double height = 1)
        {
            this.length = length;
            this.breadth = breadth;
            this.height = height;
        }

        public double getVolume()
        {
            return length * breadth * height;
        }

        public static Box operator +(Box a, Box b)
        {
            Box c = new Box();
            c.length = a.length + b.length;
            c.breadth = a.breadth + b.breadth;
            c.height = a.height + b.height;
            return c;
        }

        public static Box operator -(Box a, Box b)
        {
            Box c = new Box();
            c.length = Math.Abs(a.length - b.length);
            c.breadth = Math.Abs(a.breadth - b.breadth);
            c.height = Math.Abs(a.height - b.height);
            return c;
        }

        public static Box operator *(Box a, Box b)
        {
            Box c = new Box();
            c.length = a.length * b.length;
            c.breadth = a.breadth * b.breadth;
            c.height = a.height * b.height;
            return c;
        }

        public static Box operator /(Box a, Box b)
        {
            Box c = new Box();
            c.length = a.length / b.length;
            c.breadth = a.breadth / b.breadth;
            c.height = a.height / b.height;
            return c;
        }
        public static bool operator ==(Box a, Box b)
        {            
            if ((a.length == b.length) && (a.breadth == b.breadth) && (a.height == b.height))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public static bool operator !=(Box a, Box b)
        {
            if ((a.length != b.length) || (a.breadth != b.breadth) || (a.height != b.height))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static bool operator <(Box a, Box b)
        {
            if ((a.length <= b.length) && (a.breadth <= b.breadth) && (a.height <= b.height))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public override string ToString()
        {
            return string.Format("{0},{1},{2}", length, breadth, height);
        }

    }
    class Program
    {
        static void Main(string[] args)
        {
            Box a = new Box(10.0,20.0,30.0);
            Box b = new Box(11.0,22.0,33.0);

            Console.WriteLine("The Value Of A : " + a.ToString());
            Console.WriteLine("The Value of B : " + b.ToString());

            Console.WriteLine("Get Volumn for A : "+ a.getVolume());
            Console.WriteLine("Get Volumn for B : "+ b.getVolume());

            Box c = new Box();
            c = a + b;
            Console.WriteLine("Adding Operator : "+c.ToString());

            c = new Box();
            c = a - b;
            Console.WriteLine("Subtract Operator : " + c.ToString());

            c = new Box();
            c = a * b;
            Console.WriteLine("Multiply Operator : " + c.ToString());

            c = new Box();
            c = a / b;
            Console.WriteLine("Division Operator : " + c.ToString());

            Console.WriteLine("Equal Operator : " + (a == b));
            Console.WriteLine("Not Equal Operator : " + (a != b));



            Console.ReadLine();
        }
    }
}
