import Foundation

let number: Int? = 3
let closure: (Int) -> Int? = { $0 > 2 ? nil : $0 * 3 }

number.map(closure)
number.flatMap(closure)
