class Bca{
    void BcaStd(){
        System.out.println("I Am Studing BCA");
    }
}
class Mca extends Bca{
    void McaStd(){
        System.out.println("I Am Studing Mca");
    }
}
class student{
    public static void main(String args[]){
        Mca m = new Mca();
        m.McaStd();
        m.BcaStd();
    }
}