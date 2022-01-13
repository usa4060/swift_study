CHAPTER 01
===
 1. 명명법
    * Lower Camel Case : 함수이름, 변수명, 상수 등
   - ex) someVariableName
    * Upper Camel Case : 타입 ( class, struct, enum, extension... )
   - ex) Person, Point, Week
    * _swift는 모든 대소문자를 구분한다._
---
 2. 콘솔로그
    * print함수 :  단순 문자열 출력
    * dump함수 : 인스턴스의 자세한 설명 (description 프로퍼티)까지 출력함
---
 3. 문자열 보간법 (**string InterPolation**)
    * 프로그램 실행 중 문자열 내에 변수 또는 상수의 실질적 값을 표현하기 위해 사용한다. 
    * '  \\(value)' 를 사용하여 표현한다.
 * example
 '''swift
 let age: Int = 20

 "안녕하세요! 저는 \(age)살 입니다"
 // == "안녕하세요! 저는 10살 입니다"

 "안녕하세요! 저는 \(age+5)살 입니다"
 // == "인녕히세요! 저는 15살 입니다"

 print("안녕하세요! 저는 \(age+5)살 입니다")
 print("\n######################\n")
  
 class Person{
    var name: String = "yongin"
    var age: Int = 25
 }

 let yongin: Person = Person()

 print(yongin)
 print("\n####################\n")
 dump(yongin)
 '''