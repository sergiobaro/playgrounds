import UIKit

let df = DateFormatter()
df.dateFormat = "MMMM"

let calendar = Calendar(identifier: .gregorian)
let today = Date()
var todayComponents = calendar.dateComponents([.year, .month], from: today)
todayComponents.day = 1

let firstDayOfTheMonth = calendar.date(from: todayComponents)!
let weekdayOfTheFirstDay = calendar.component(.weekday, from: firstDayOfTheMonth)

let numberOfDaysOfTheMonth = calendar.range(of: .day, in: .month, for: today)!.count

var days = [(weekday: Int, day: Int)]()

var currentWeekday = weekdayOfTheFirstDay

for currentDay in 1...numberOfDaysOfTheMonth {
  let day = (weekday: currentWeekday, day: currentDay)
  days.append(day)
  currentWeekday %= 7
  currentWeekday += 1
}
