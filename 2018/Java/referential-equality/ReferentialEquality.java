// cerner_2^5_2018
public class ReferentialEquality
{
  public static void main(String [] args) 
  {
    int primitive1 = 2;
    int primitive2 = 2;
    boolean primitivesAreEqual = primitive1 == primitive2;
    System.out.println("primitive1 == primitive2 == " + primitivesAreEqual);

    Integer integer1 = new Integer(2);
    Integer integer2 = new Integer(2);
    boolean objectsWithoutEqualsMethod = integer1 == integer2;
    System.out.println("integer1 == integer2 == " + objectsWithoutEqualsMethod);
    boolean objectsWithEqualsMethod = integer1.equals(integer2);
    System.out.println("integer1.equals(integer2) == " + objectsWithEqualsMethod);
  }
}