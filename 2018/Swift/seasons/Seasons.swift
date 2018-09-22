import Foundation
// cerner_2^5_2018
var now = Date()
var calendar = Calendar.current

let month = calendar.component(.month, from: now)
let day = calendar.component(.day, from: now)

if (month == 3 && day >= 20) || (month > 3 && month < 6) || (month == 6 && day < 21) {
  print("Spring!")
} else if (month == 6 && day >= 21) || (month > 6 && month < 9) || (month == 9 && day < 23) {
  print("Summer!")
} else if (month == 9 && day >= 23) || (month > 9 && month < 12) || (month == 12 && day < 21) {
  print("Fall!")
} else if (month == 12 && day >= 21) || (month >= 1 && month < 3) || (month == 3 && day < 20) {
  print("Winter!")
}