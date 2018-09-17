using System;

// cerner_2^5_2018
namespace Fibonacci
{
    public class Program
    {
        public static void Main(string[] args)
        {
            int number = int.Parse(args[0]);
            if (number < 0)
                throw new ArgumentException("The first argument in this program needs to be a positive number.");
            Console.WriteLine("Fibonacci number " + number + " is: " + CalculateFibonacci(0, 1, number));
        }

        private static int CalculateFibonacci(int term1, int term2, int iterations)
        {
            if (iterations == 0) 
            {
                return 1;
            }
            else
            {
                return CalculateFibonacci(term2, term1 + term2, iterations-1) + term1;
            }
        }
    }
}
