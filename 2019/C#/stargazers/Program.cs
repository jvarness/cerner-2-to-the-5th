using System;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using Newtonsoft.Json.Linq;
// cerner_2^5_2019
namespace stargazers
{
    class Program
    {
        static async Task Main(string[] args)
        {
            if (args.Length < 1 || String.IsNullOrWhiteSpace(args[0])) {
                throw new ArgumentException("The first argument in the program must be a non-empty string.");
            }
            HttpClient client = new HttpClient();
            client.DefaultRequestHeaders.Add("User-Agent", "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36");
            String url = String.Format("https://api.github.com/repos/{0}", args[0]);
            HttpResponseMessage message = await client.GetAsync(String.Format("https://api.github.com/repos/{0}", args[0]));
            if(message.StatusCode != HttpStatusCode.OK) {
                Console.WriteLine(String.Format("Could not find repo: {0}", args[0]));
            }
            else {
                String response = await message.Content.ReadAsStringAsync();
                JObject json = JObject.Parse(response);
                Console.WriteLine(String.Format("The repo {0} has {1} stargazers!", args[0], json["stargazers_count"]));
            }
        }
    }
}
