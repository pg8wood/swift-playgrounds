let test: String = "hello"
let erased: Any = test

switch erased {
case let string as String:
    print(string)
case is Int:
    print("int")
default:
    print("uh oh")
}

