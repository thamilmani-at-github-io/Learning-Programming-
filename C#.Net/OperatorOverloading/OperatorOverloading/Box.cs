using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OperatorOverloading
{
    class Box
    {
        private double length;
        private double breadth;
        private double height;

        public Box(double length=1,double breadth=1,double height=1)
        {
            this.length = length;
            this.breadth = breadth;
            this.height = height;
        }

        public double getVolume()
        {
            return length * breadth * height;
        }

        public static Box operator +(Box a,Box b)
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

        public override string ToString()
        {
            return string.Format("{0},{1},{2}", length,breadth,height);
        }

    }
}
