// Swift의 기본 데이터 타입
// Bool Int UInt Float Double Character String

var someBool : Bool = true
someBool = false
// someBool = 0 // 컴파일 에러
// someBool = 1 // 컴파일 에러

var someInt : Int = -100
// someInt = 100.1 // 컴파일 에러
var someUInt : UInt = 100
// someUInt = -100 // 컴파일 에러
// someUInt = someInt // 컴파일 에러

var someFloat : Float = 3.14
someFloat = 3

var someDouble : Double = 3.14
// someDouble = someFloat // 컴파일 에러
 
var someCharacter: Character = "🇰🇷"
someCharacter = "😄"
someCharacter = "가"
someCharacter = "A"
// someCharacter = "하하하" // 컴파일 오류발생
print(someCharacter)

// String
var someString: String = "하하하 😄 "
someString = someString + "웃으면 복이와요"
print(someString)

let integer = 100
let floatingPoint = 12.34
let apple = "A"
print(type(of: integer),"\n")
print(type(of: floatingPoint),"\n")
print(type(of: apple),"\n")

