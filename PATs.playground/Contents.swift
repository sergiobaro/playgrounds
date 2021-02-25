import UIKit

protocol ProtoDelegate {
//  associatedtype Notification
  func notify()
}

class DelegateString: ProtoDelegate {
//  typealias Notification = Int
  func notify() {
    print("DelegateString")
  }
}

class DelegateInt: ProtoDelegate {
  typealias Notification = Int
  func notify() {
    print("DelegateInt")
  }
}

class Delegates<Delegate: ProtoDelegate> {
  let delegates: [Delegate]
  init(delegates: [Delegate]) {
    self.delegates = delegates
  }

  func notify() {
    delegates.forEach { $0.notify() }
  }
}

let delegates = Delegates<DelegateString>(delegates: [
  DelegateString(),
//  DelegateInt()
])

delegates.notify()

