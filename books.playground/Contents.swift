import UIKit


let b = ["BBAR 150", "CDXE 515", "BKWR 250", "BTSQ 890", "DRTY 600"]
let c = ["A", "B", "C", "D"]
let res = "(A : 0) - (B : 1290) - (C : 515) - (D : 600)"

func stockList(_ listOfArt: [String], _ listOfCat: [String]) -> String {
  guard listOfArt.count > 0 && listOfCat.count > 0 else {
    return ""
  }
  
  let values = listOfArt.map { book -> (String, Int) in
    let components = book.split(separator: " ")
    return (String(components[0].first!), Int(components[1])!)
  }
  .reduce(into: [String: Int]()) { result, element in
    let (category, value) = element
    
    if result[category] == nil {
      result[category] = 0
    }
    result[category]! += value
  }
  
  let categories = listOfCat.reduce(into: [String]()) { result, category in
    let value = values[category] ?? 0
    result.append("(\(category) : \(value))")
  }
  
  return categories.joined(separator: " - ")
}

stockList(b, c)

