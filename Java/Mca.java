class Bca{
    Bca(){
        System.out.println("I Am Studing BCA");
    }
}
class Mca extends Bca{
    Mca(){
        System.out.println("I Am Studing Mca");
    }
}
class student{
    public static void main(String args[]){
        Mca m = new Mca();
        m.Mca();
        //m.Bca();
    }
}