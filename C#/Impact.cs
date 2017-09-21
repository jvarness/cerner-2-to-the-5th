// cerner_2^5_2017
// self-replicating program
using System;
using System.IO;
namespace Engineering
{
	public class Impact
	{
		public static void Main(String [] args)
		{
			string str = "// cerner_2^5_2017{1}{2}// self-replicating program{1}{2}using System;{1}{2}using System.IO;{1}{2}namespace Engineering{1}{2}{4}{1}{2}{3}public class Impact{1}{2}{3}{4}{1}{2}{3}{3}public static void Main(String [] args){1}{2}{3}{3}{4}{1}{2}{3}{3}{3}string str = {6}{0}{6};{1}{2}{3}{3}{3}string program = String.Format(str, str, Convert.ToChar(32), Convert.ToChar(13), Convert.ToChar(10), Convert.ToChar(9), Convert.ToChar(123), Convert.ToChar(125));{1}{2}{3}{3}{3}File.WriteAllText({6}Impact2.cs{6}, program);{1}{2}{3}{3}{5}{1}{2}{3}{5}{1}{2}{5}";
			string program = String.Format(str, str, Convert.ToChar(32), Convert.ToChar(13), Convert.ToChar(10), Convert.ToChar(9), Convert.ToChar(123), Convert.ToChar(125));
			File.WriteAllText("Impact2.cs", program);
		}
	}
}