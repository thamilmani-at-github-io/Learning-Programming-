interface Animal{
    public void Eating();
    public void Travel();
}
class Mca implements Animal{
    public void Eating(){
        System.out.println("Animal Is Eating");
    }
    public void Travel(){
        System.out.println("Animal Is Travel");
    }
}
class Inter{
    public static void main(String[] args) {
        Mca m = new Mca();
        m.Eating();
        m.Travel();
    }
}