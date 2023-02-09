import UIKit

class Test {
    var name = "unset"
}

class Runner {
    let test: Test = Test()
    
    func modify(test: Test) {
        test.name = "hello!"
    }
    
}

let runner = Runner()
runner.modify(test: runner.test)
print(runner.test.name)
