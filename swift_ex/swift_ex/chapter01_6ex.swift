
// 함수의 기본 형태
// func 함수이름 (매개면수1 이름 : 타입, 매개변수2 이름 : 타입, . . .) -> 반환타입 {
//      - 함수 구현부 -
// return 반환값
// }

func sum(a: Int, b: Int) ->Int{
    return a + b
}


func printName(name: String) -> Void{
    print(name)
}
// 위와 아래의 함수는 같은 의미이다. (void 형태의 경우엔 따로 반환값을 지정하지 않아도 괜찮음)
func printName1(name: String) {
    print(name)
}

func maximumIntegerValue() -> Int {
    return Int.max
}

func hello() -> Void {
    print("Hello World")

}
// 위와 아래의 함수는 같은 의미이다.
func hello1(){
    print("Hello World")
}


print(sum(a: 1, b: 2))
printName(name: "용인")
printName1(name: "조용인")
print(maximumIntegerValue())
hello()
hello1()
