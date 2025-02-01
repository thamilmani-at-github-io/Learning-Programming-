abstract class Bank{
    abstract float rateofinterest();
}
class SBI extends Bank{
    public float rateofinterest(){
        float ROI = 6.12f;
        return ROI;
    }
}
class IOB extends Bank{
    public float rateofinterest(){
        float ROI = 6.17f;
        return ROI;
    }
}
class Canara extends Bank{
    public float rateofinterest(){
        float ROI = 6.65f;
        return ROI;
    }
}
class Loan{
    public static void main(String args[]){
        Canara c = new Canara();
        System.out.println("Canara Interest Is : "+c.rateofinterest());

        SBI sbi = new SBI();
        System.out.println("SBI Interest Is : "+sbi.rateofinterest());

        IOB iob = new IOB();
        System.out.println("IOB Interest Is : "+iob.rateofinterest());
    }
}