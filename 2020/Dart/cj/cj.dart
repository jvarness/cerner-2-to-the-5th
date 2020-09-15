import "dart:io";
import "dart:math";
import "dart:convert";

// cerner_2^5_2020
void main() async {
  int fishId =
      new Random().nextInt(79) + 1; // fishIds are 1-80, random has min of 0
  HttpClient client = new HttpClient();
  HttpClientRequest req =
      await client.getUrl(new Uri.https('acnhapi.com', "v1/fish/${fishId}"));
  HttpClientResponse resp = await req.close();
  if (resp.statusCode > 299) {
    print("Oh no! Got status code: ${resp.statusCode}");
    exit(1);
  }

  String json = await resp.transform(utf8.decoder).join("");
  Map<String, dynamic> fish = jsonDecode(json);
  print("${fish["catch-phrase"]} ");
  print("C.J. will buy that from you for ${fish["price-cj"]}");
}
