// cerner_2^5_2019
public class Sam {
  public static void main(String [] args) {
    /*
    The line below replaces all this code:
    
    new Thread(new Runnable(){
      public void run() {
         System.out.println("Hello World!");
      }
    }).start();

    javac also creates 2 class files in the above example. It only generates
    one using the lambda.
    */
    new Thread(() -> System.out.println("Hello World!")).start();
  }
}