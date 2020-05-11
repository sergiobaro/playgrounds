import UIKit

var n = 85299258

func findDigits(_ n: Int) -> [Int] {
  var number = n
  var digits = [Int]()

  while number > 0 {
    digits.append(number % 10)
    number /= 10
  }
  
  return digits
}

func thirt(_ n: Int) -> Int {
  let reminders = [1, 10, 9, 12, 3, 4]
  let digits = Array(String(n)).reversed().compactMap({ Int(String($0)) }) //findDigits(n)
  
  var total = 0
  for (index, digit) in digits.enumerated() {
    let reminderIndex = index % reminders.count
    let reminder = reminders[reminderIndex]
    total += (digit * reminder)
  }
  
  return total == n ? total : thirt(total)
}

thirt(n)
