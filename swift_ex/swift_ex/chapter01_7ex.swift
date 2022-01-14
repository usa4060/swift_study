// 기본값을 갖는 매개변수는 매개변수 목록 중에 뒤쪽에 위치하는 것이 좋다.
// func 함수이름(매개변수1이름 : 타입, 매개변수2이름 : 타입 = 매개변수 기본 값 . . .) -> 반환타입 {
//  함수 구현부
// return 반환값
// }

func greeting(friend : String, me : String = "yongin") -> Void{
    print("Hello \(friend) ! I'm \(me)!")
}

// 매개변수 기본값을 가지는 매개변수는 생략이 가능하다.

greeting(friend: "준수")
greeting(friend: "준수", me: "영원")

// 전달인자 레이블은 함수를 호출할 때
// 매개변수의 역할을 좀 더 명확하게 하거나
// 함수 사용자의 입장에서 표현하고자 할 때 사용합니다.
// func 함수이름(전달인자 레이블 매개변수1이름 : 타입, 전달인자 레이블 매개변수2이름 : 타입 . . .) -> 반환타입{
//  함수 구현부
//  return
//}

// 함수 내부에서 전달인자를 사용할 때에는 매개변수 이름을 사용합니다
func greeting(to friend: String, from me: String)->Void{
    print("Hello \(friend)! I'm \(me)")
}

// 함수를 호출 할 때에는 전달인자 레이블을 사용해야 합니다.
greeting(to: "준수", from: "용인")


// 전달 받을 값의 개수를 알기 어려울 때 가변 매개변수를 사용한다.
// func 함수이름(매개변수1이름 : 타입 , 전달인자 레이블 매개변수2이름 : 타입...) -> 반환타입 {
// 함수 구현부
// return
// }

// 가변 매개변수는 함수 당 1개만 선언 가능하다.

func sayHelloFriends(me: String, friends: String...)-> String{
    return "Hello \(friends)! my name is \(me)!"
}
print(sayHelloFriends(me: "yongin", friends: "준수", "영원"))
print(sayHelloFriends(me: "yongin"))

// 스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어이다.
// 스위프트의 함수는 일급객체이므로 변수, 상수 등에 저장이 가능하고
// 매개변수를 통해 전달할 수 있습니다.

// 함수를 변수등에 저장 할 때는 반환타입을 생략할 수 없다ㅣ
// (매개변수1타입, 매개변수2타입 . . .) -> 반환타입

var someFunc : (String, String...) -> String = sayHelloFriends(me: friends: )

print(someFunc("yongin", "a","b","c"))

// 반환타입이 다른 함수는 할당 할 수 없습니다.

func runAnother(function: (String, String...)->String) ->Void{
    print(function("용인", "준수", "영원"))
}

runAnother(function: sayHelloFriends(me:friends:))
