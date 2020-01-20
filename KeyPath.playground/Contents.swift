import Foundation

struct Account {
    enum `Type` {
        case account
        case other
    }
    
    let name: String
    let type: Type
    
    var isAccount: Bool {
        return type == .account
    }
}


extension Sequence {
    func filter(_ keyPath: KeyPath<Element, Bool>) -> [Element] {
        return filter { $0[keyPath: keyPath] }
    }

    func map<T>(_ keyPath: KeyPath<Element, T>) -> [T] {
        return map { $0[keyPath: keyPath] }
    }
    
    func compactMap<T>(_ keyPath: KeyPath<Element, T>) -> [T] {
        return compactMap { $0[keyPath: keyPath] }
    }
    
    func sorted<T: Comparable>(_ keyPath: KeyPath<Element, T>) -> [Element] {
        return sorted { $0[keyPath: keyPath] < $1[keyPath: keyPath] }
    }
}


let accounts: [Account] = [
    .init(name: "3", type: .account),
    .init(name: "2", type: .other),
    .init(name: "1", type: .account),
]

accounts.filter(\.isAccount)
accounts.map(\.name)
accounts.compactMap(\.name)
accounts.sorted(\.name)
