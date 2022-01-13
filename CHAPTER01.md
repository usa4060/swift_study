CHAPTER 01
===
 1. 명명법
    * Lower Camel Case : 함수이름, 변수명, 상수 등

         ex) someVariableName
    * Upper Camel Case : 타입 ( class, struct, enum, extension... )

        ex) Person, Point, Week
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
 ```swift
 let age: Int = 20

 "안녕하세요! 저는 \(age)살 입니다"
 // == "안녕하세요! 저는 20살 입니다"

 "안녕하세요! 저는 \(age+5)살 입니다"
 // == "인녕히세요! 저는 25살 입니다"

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
 ```

---
 4. 상수와 변수 선언
    * swift언어는 함수형 프로그래밍 패러다임을 채택하여, 
    
        _불변 객체를 중요시하며 상수표형이 자주 등장하게 된다._
    * let : 상수 선언 키워드
    
        ```swift 
        let 이름: 타입 = 값
        ```
    * var : 변수 선언 키워드
        ```swift 
        var 이름: 타입 = 값
        ```
    
    * let은 _차후에 변경이 불가능한 값_ 이고,

      var는 _차후에 변경이 가능한 값_ 이다.
 * example
 ``` swift
 let 상수이름: 타입 = 값
 var 변수이름: 타입 = 값 
 
 let constant: String = "차후에 변경이 불가능한 상수 let"
 var variable: String = "차후에 변경이 가능한 변수 var"

 variable = "변수는 이렇게 다른 값을 할당 할 수 있다."
 ```
 ---
 5. 상수 선언 후, 값 할당하기
    * 타입이 명확한 값은, 상수나 변수로 선언할 때 타입을 명시하지 않아도 된다
    * 하지만, 선언을 한 뒤 나중에 값을 할당하려는 상수나 변수는 타입을 명시해야 한다.
 * example
 ```swift
 // 나중에 할당하려고 하는 상수나 변수는 타입을 명시해주어야 한다.
 let sum: Int
 let a : Int = 100
 let b : Int = 200

 // 선언 후 첫 할당
 sum = a + b

 // 이 이후에 sum = 1 과 같이 값을 변경하려는 시도를 하면 오류가 발생

 // 변수 또한 차후에 값 할당 가능 또한 값 변경도 가능
 var sum1: Int
 sum1 = a + b    // sum1 == 300
 sum1 = a        // sum1 == 100
 print(sum,"\n",sum1,"\n")
 ```
---
 6. swift의 기본 데이터 타입
* swift의 데이터 타입은 크게 4종류가 있다.

  Bool (부울형) / Int, UInt (정수형) / Float, Double (실수형) / Character, String (문자형)

    * Bool 
        - true와 false만을 값으로 가지는 타입
        - example
        ```swift
        var someBool : Bool = true
        someBool = false
        // someBool = 0 // 컴파일 에러
        // someBool = 1 // 컴파일 에러
        ```
    * Int, UInt
        - Int : 정수타입. 현재는 기본적으로 64비트 정수형 (8byte)
        - UInt : 부호가없는 정수타입. 현재는 기본적으로 64비트 정수형 (8byte)
        - example
        ```swift
        var someInt : Int = -100
        // someInt = 100.1 // 컴파일 에러
        var someUInt : UInt = 100
        // someUInt = -100 // 컴파일 에러
        // someUInt = someInt // 컴파일 에러
        ```
    * Float, Double
        - Float : 실수 타입. 32비트 부동소수형 (4btye)
        - Double : 실수 타입. 64비트 부동소수형 (8byte)
        - example
        ```swift
        var someFloat : Float = 3.14
        someFloat = 3

        var someDouble : Double = 3.14
        // someDouble = someFloat // 컴파일 에러
        ```    
    * Character, String 
        - Character : 문자 타입. 유니코드 사용. 큰따옴표("") 사용
        - String : 문자열 타입. 유니코드 사용. 큰따옴표("") 사용
        - example
        ```swift
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

        ```
---