// someOptionalParm에 nil이 할당 될 수 있다.
func someFunction(someOptionalParam: Int?) {
       // ....
}

/// someOptionalParm에 nil이 할당 될 수 없다.
func someFunction(someOptionalParam: Int) {
       // ....
}

someFunction(someOptionalParam: nil)
// someFunction(someParam: nil)

// enum Optional<Wrapped>: ExpressibleByNiliteral {
//          case none
//          case some(Wrapped)
// }

// 위의 형태가 옵셔널의 실제 구조



let optionalValue: Optional<Int> = nil
let optionalValue_: Int? = nil


//=======================================================
// 느낌표를 사용한 암시적 추출 옵셔널

// Implicitly Unwrapped Optional
var implicitlyUnwrappedOptionalValue: Int! = 100

switch implicitlyUnwrappedOptionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// 기존 변수처럼 사용 가능
implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

// nil 할당 가능
implicitlyUnwrappedOptionalValue = nil

// 잘못된 접근으로 인한 런타임 오류 발생
//implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1


// ========================================================
// 물음표를 사용한 옵셔널

// Optional
var optionalValue2: Int? = 100

switch optionalValue2 {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// nil 할당 가능
optionalValue2 = nil

// 기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산불가
//optionalValue2 = optionalValue2 + 1


// 느낌표와 물음표의 가장 큰 차이점은, 옵셔널 변수를 일반 변수와 같이 연산수행을 할 수 있냐는 것.
// 또한 느낌표를 사용하면, 연산상의 오류가 런타임 중에 발견되지만 물음표는, 컴파일상에서 바로 발견 됨.
