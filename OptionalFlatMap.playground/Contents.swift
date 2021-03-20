import UIKit

[[1,2], [3,4]].flatMap({ $0 })

[1, 2, nil, 3, 4].compactMap({ $0 })

let number: Int? = 3
let closure: (Int) -> Int? = { Int($0) }

String(describing: number.map(closure))
String(describing: number.flatMap(closure))
