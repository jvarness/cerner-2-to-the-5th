import Foundation

// cerner_2^5_2020
let villager = Int64.random(in: 1...391)
let url = URL(string: "http://acnhapi.com/v1/villagers/\(villager)")!
// checks the status of the call and then prints out villager info
func printVillager(data: Data?, response: URLResponse?, error: Error?) {
    if error != nil {
        print("There was an error: \(error.debugDescription)")
        return
    }
    let httpResponse = response as? HTTPURLResponse
    if httpResponse!.statusCode > 299 {
        print("Server responded with: \(httpResponse!.statusCode)")
    }
    let json = try? JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any]
    let name = (json!["name"] as! [String: Any])["name-USen"] as! String
    let saying = json!["saying"] as! String
    let catchphrase = (json!["catch-translations"] as! [String: Any])["catch-USen"] as! String
    let species = json!["species"] as! String
    print("\(name) the \(species) says: \(saying)")
    print("...\(catchphrase)")
}

let task = URLSession.shared.dataTask(with: url, completionHandler: printVillager)
task.resume()
// tasks are async, so need to make sure we wait for it to complete.
while task.state != .completed {
    sleep(1)
}
