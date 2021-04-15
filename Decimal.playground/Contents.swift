import UIKit

var str = "Hello, playground"

let double = 3.1471

Decimal(string: String(format: "%.2f", double))
Decimal(double)

struct Request: Codable {
    let input: Decimal
}

let request = Request(input: Decimal(string: String(format: "%.2f", double))!)
//let request = Request(input: Decimal(double))


let data = try JSONEncoder().encode(request)
try JSONSerialization.jsonObject(with: data, options: .allowFragments)
