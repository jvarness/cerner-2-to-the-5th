// cerner_2^5_2017
// Ever wanted to figure out how many stack frames your Java runtime can utilize?
// Errors should never be caught btw... So don't do it.
public class Impact
{
	public static int count = 1;
	public static void main(String [] args)
	{
		try
		{
			stackCheck();
		}
		catch(StackOverflowError s)
		{
			System.out.println("\nStackOverflowError occurred.");
			System.out.println("\nCalls to the stack made: " + count);
		}
	}
	public static void stackCheck() throws StackOverflowError
	{
		count++;
		stackCheck();
	}
}