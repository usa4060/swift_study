func printName(_ name: String) {
    print(name)
}

var myName: String? = nil

//printName(myName)
// 전달되는 값의 타입이 다르기 때문에 컴파일 오류발생



if let name: String = myName {  // if-let구문을 사용하여 옵셔널 바인딩!!!!!
    printName(name)
} else {
    print("myName == nil")
}


var yourName: String! = nil

if let name: String = yourName {
    printName(name)
} else {
    print("yourName == nil")
}

// name 상수는 if-let 구문 내에서만 사용가능합니다
// 상수 사용범위를 벗어났기 때문에 컴파일 오류 발생
//printName(name)


// ,를 사용해 한 번에 여러 옵셔널을 바인딩 할 수 있습니다
// 모든 옵셔널에 값이 있을 때만 동작합니다
myName = "yongin"
yourName = nil

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
// yourName이 nil이기 때문에 실행되지 않습니다 -> 쉼표로 연결된 두개의 옵셔널이 모두 nil이 아니어야 출력 됨
yourName = "hana"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
// yongin and hana



//------ 아래는 강제 추출 하는 법 (권장 x )
var myName1: String? = "yongin"
var youName1: String! = nil


printName(myName1!) // yagom
myName1 = nil

//print(myName1!)
// 강제추출시 값이 없으므로 런타임 오류 발생
youName1 = nil

//printName(youName1)
// nil 값이 전달되기 때문에 런타임 오류발생
