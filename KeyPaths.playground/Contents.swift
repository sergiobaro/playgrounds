import UIKit


struct Category {
    let id: String
}

var categories = [Category]()
categories.append(.init(id: "1"))
categories.append(.init(id: "2"))
categories.append(.init(id: "3"))
categories.append(.init(id: "4"))

let ids = categories.map(\.id)

print(ids)


