import UIKit
//
protocol P {
    func foo()
}

extension P {
    func foo() { print("p.foo") } // dynamic
    func bar() { print("p.bar") } // static
}

extension P {
    func bar2() {print("P.bar2")} // static
}

struct A: P {
    func foo() { print("A.foo") } // override
    func bar() { print("A.barA") }
    func bar2() {print("A.bar2A")}
}

let a = A()
a.bar()
a.foo()
a.bar2()

let p: P = A()
print("///////////")
p.bar()
p.foo()
p.bar2()

let c: P = a
//c.bar()
//c.foo()





protocol Animal {
    func isCute() -> Bool  // Table dynamic
}

extension Animal {
    func canBite() -> Bool { return false }
    func canGetAngry() -> Bool { return true } // Static
}

class Dog: Animal {
    func isCute() -> Bool { return true } // Table dynamic
    @objc dynamic func hoursSleep() -> Int { return 5 } // Message
}

extension Dog {
    func canBite() -> Bool { return true } // Static
    @objc func goWild() { print("gggg")} // Message
    func canGetAngry() -> Bool { return false }
}

final class Employee {
    func canCode() -> Bool { return true } // Static
}

class childAnimal: Dog {
    func isCute2() -> Bool { return false }
}


//let p = Dog()
//p.isCute()
//p.hoursSleep()
//p.canGetAngry()
//p.canBite()
//p.goWild()

let b: Animal = Dog()
b.isCute()
b.canGetAngry()

let m = childAnimal()
m.goWild()
m.isCute2()
m.isCute()




