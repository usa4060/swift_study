CHAPTER 01
===
 명명법
 -
 * Lower Camel Case : 함수이름, 변수명, 상수 등

     ex) someVariableName
* Upper Camel Case : 타입 ( class, struct, enum, extension... )

    ex) Person, Point, Week
* _swift는 모든 대소문자를 구분한다._
---
 콘솔로그
 -
* print함수 :  단순 문자열 출력
* dump함수 : 인스턴스의 자세한 설명 (description 프로퍼티)까지 출력함
---
문자열 보간법 (**string InterPolation**)
-
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
상수와 변수 선언
-
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
 상수 선언 후, 값 할당하기
 -
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
swift의 기본 데이터 타입
-
* swift의 데이터 타입은 크게 4종류가 있다.

-  Bool (부울형) / Int, UInt (정수형) / Float, Double (실수형) / Character, String (문자형)

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
 Any, AnyObject, nil
 -
* Any : Swift의 모든 타입을 지칭하는 키워드

     ```swift
     var someAny : Any = 100
     someAny = "어떤 타입도 수용 가능합니다"
     someAny = 123.12

     // Any 타입에 Double 자료를 넣어두었더라도, Any는 Double 타입이 아니기 때문에 할당할 수 없습니다.
     // 명시적으로 타입을 변환해 주어야 합니다.

     let someDouble: Double = someAny // 컴파일 에러
     ```
* AnyObject : 모든 클래스 타입을 지칭하는 키워드

     ```swift
     class SomeClass{}
     var someAnyObject: AnyObject = SomeClass()

     // AnyObject는 클래스의 인스턴스만 수용 가능하기 때문에 클래스의 인스턴스가 아니면 할당할 수 없습니다.
     someAnyObject = 123.12  // 컴파일 에러

    ```
 * nil : _없음_ 을 지칭하는 키워드 (c++의 null)

    ```swift
     // someAny는 Any타입이고, someAnyObject는 AnyObject 타입이기 때문에, nil을 할당할 수 없습니다.

     var someAny : Any = 100
     var someAnyObject: AnyObject = SomeClass()

     someAny = nil       // 컴파일 에러
     someAnyObject = nil // 컴파일 에러

    ```
---
 컬렉션 타입
-
1. Array
    - 멤버가 순서(index)를 가진 리스트 형태의 컬렉션 타입
    - 여러가지 리터럴 문법을 활용할 수 있어서 표현법이 다양함

        ```swift
        // 1. Array 선언 및 생성
        var integers: Array<Int> = Array<Int>()

        // 위와 동일한 표현
        // var integers: Array<Int> = [Int]()
        // var integers: Array<Int> = []
        // var integers: [Int] = Array<Int>()
        // var integers: [Int] = [Int]()
        // var integers: [Int] = []
        // var integers = [Int]()


        // 2. Array 활용
        integers.append(1)
        integers.append(100)

        // Int 타입이 아니므로 Array에 추가할 수 없습니다
        //integers.append(101.1)

        print(integers)	// [1, 100]

        // 멤버 포함 여부 확인
        print(integers.contains(100)) // true
        print(integers.contains(99)) // false

        // 멤버 교체
        integers[0] = 99

        // 멤버 삭제
        integers.remove(at: 0)
        integers.removeLast()
        integers.removeAll()

        // 멤버 수 확인
        print(integers.count)

        // 인덱스를 벗어나 접근하려면 익셉션 런타임 오류발생
        //integers[0]


        // 3. 불변 Array: let을 사용하여 Array 선언
        let immutableArray = [1, 2, 3]

        // 수정이 불가능한 Array이므로 멤버를 추가하거나 삭제할 수 없습니다
        //immutableArray.append(4)
        //immutableArray.removeAll()
        ```
2. Dictionary
     - key와 value의 쌍으로 이루어진 컬렉션 타입
     - Array와 비슷하게 여러가지 리터럴 문법을 활용할 수 있어서 표현 방법이 다양함

        ```swift
        // 1. Dictionary의 선언과 생성
        // Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
        var anyDictionary: Dictionary<String, Any> = [String: Any]()

        // 위와 동일한 표현
        // var anyDictionary: Dictionary <String, Any> = Dictionary<String, Any>()
        // var anyDictionary: Dictionary <String, Any> = [:]
        // var anyDictionary: [String: Any] = Dictionary<String, Any>()
        // var anyDictionary: [String: Any] = [String: Any]()
        // var anyDictionary: [String: Any] = [:]
        // var anyDictionary = [String: Any]()


        // 2. Dictionary 활용
        // 키에 해당하는 값 할당
        anyDictionary["someKey"] = "value"
        anyDictionary["anotherKey"] = 100

        print(anyDictionary) // ["someKey": "value", "anotherKey": 100]

        // 키에 해당하는 값 변경
        anyDictionary["someKey"] = "dictionary"
        print(anyDictionary) ["someKey": "dictionary", "anotherKey": 100]

        // 키에 해당하는 값 제거
        anyDictionary.removeValue(forKey: "anotherKey")
        anyDictionary["someKey"] = nil
        print(anyDictionary)


        // 3. 불변 Dictionary: let을 사용하여 Dictionary 선언
        let emptyDictionary: [String: String] = [:]
        let initalizedDictionary: [String: String] = ["name": "yagom", "gender": "male"]

        // 불변 Dictionary이므로 값 변경 불가
        //emptyDictionary["key"] = "value"

        // 키에 해당하는 값을 다른 변수나 상수에 할당하고자 할 때는 옵셔널과 타입 캐스팅 파트에서 다룹니다
        // "name"이라는 키에 해당하는 값이 없을 수 있으므로 String 타입의 값이 나올 것이라는 보장이 없습니다.
        // 컴파일 오류가 발생합니다
        // let someValue: String = initalizedDictionary["name"]
       ```
3. Set
     - 중복되지 않는 멤버가 순서없이 존재하는 컬렉션
     - Array, Direction과 다르게 축약형이 존재하지 않음.

        ```swift
        // 1. Set 생성 및 선언
        var integerSet: Set<Int> = Set<Int>()

        // insert : 새로운 멤버 입력
        // 동일한 값은 여러번 insert해도 한번만 저장됩니다.
        integerSet.insert(1)
        integerSet.insert(99)
        integerSet.insert(99)
        integerSet.insert(99)
        integerSet.insert(100)

        print(intigerSet) // {100, 99, 1}

        // contains: 멤버 포함 여부 확인
        print(integerSet.contatins(1)) // true
        print(integerSet.contains(2)) // false

        // remove: 멤버 삭제
        integerSet.remove(99) // {100, 1}
        integerSet.removeFirst() // {1}

        // count: 멤버 개수
        integerSet.count // 1


        // 2. Set의 활용
        // 멤버의 유일성이 보장되기 때문에 집합 연산에 활용하면 유용합니다.
        let setA: Set<Int> = [1, 2, 3, 4, 5]
        let setB: Set<Int> = [3, 4, 5, 6, 7]

        // 합집합
        let union: Set<Int> = setA.union(setB)
        print(union) // [2, 4, 5, 6, 7, 3, 1]

        // 합집합 오름차순 정렬
        let sortedUnion: [Int] = union.sorted()
        print(sortedUnion) // [1, 2, 3, 4, 5, 6, 7]

        // 교집합
        let intersection: Set<Int> = setA.intersection(setB)
        print(intersection) // [5, 3, 4]

        // 차집합
        let subtracting: Set<Int> = setA.subtracting(setB)
        print(subtracting) // [2, 1]
        ```
------
 함수
 -
* 함수선언의 기본 형태

    ```swift
    func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
    /* 함수 구현부 */
    return 반환값
    }

    // 예)
    // sum이라는 이름을 가지고 
    // a와 b라는 Int 타입의 매개변수를 가지며 
    // Int 타입의 값을 반환하는 함수
    func sum(a: Int, b: Int) -> Int {
    return a + b
    }
    ```

* 반환 값이 없는 함수  

    ```swift
    func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> Void {
    /* 함수 구현부 */
    return  
    }

    // 예)
    func printMyName(name: String) -> Void {
    print(name)
    }

    // 반환 값이 없는 경우, 반환 타입(Void)을 생략해 줄 수 있습니다
    func printYourName(name: String) {
    print(name)
    }
    ```

* 매개변수가 없는 함수    

    ```swift
    func 함수이름() -> 반환타입 {
    /* 함수 구현부 */
    return 반환값
    }

    // 예)
    func maximumIntegerValue() -> Int {
    return Int.max
    }
    ```

* 매개변수와 반환값이 없는 함수    

    ```swift
    func 함수이름() -> Void {
    /* 함수 구현부 */
    return
    }

    // 함수 구현이 짧은 경우
    // 가독성을 해치지 않는 범위에서
    // 줄바꿈을 하지 않고 한 줄에 표현해도 무관합니다
    func hello() -> Void { print("hello") }


    // 반환 값이 없는 경우, 반환 타입(Void)을 생략해 줄 수 있습니다
    func 함수이름() {
    /* 함수 구현부 */
    return
    }

    func bye() { print("bye") }
    ```

* 함수의 호출    

    ```swift
    sum(a: 3, b: 5) // 8

    printMyName(name: "yagom") // yagom

    printYourName(name: "hana") // hana

    maximumIntegerValue() // Int의 최댓값

    hello() // hello

    bye() // bye
    ```
---
 함수 고급
 -   
* 매개변수의 기본 값
    - 매개변수에는 기본적으로 전달 될 값을 미리 지정해 놓을 수 있습니다.
    - 기본값을 갖는 매개변수는 매개변수 목록의 뒤쪽에 위치하는 것이 좋습니다.

        ```swift
        func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값 ...) -> 반환타입 {
        /* 함수 구현부 */
        return 반환값
        }

        func greeting(friend: String, me: String = "yongin") {
        print("Hello \(friend)! I'm \(me)")
        }

        // 매개변수 기본값을 가지는 매개변수는 호출시 생략할 수 있습니다
        greeting(friend: "hana") // Hello hana! I'm yongin
        greeting(friend: "john", me: "eric") // Hello john! I'm eric
        ```

* 전달인자 레이블(Argument Label)
    - 함수를 호출 할 때, 사용자 입장에서 매개변수의 역할을 좀 더 명확하게 표현하고자 할 때 사용합니다.
    - 전달인자 레이블은 변경하여 동일한 이름의 함수를 중복으로 생성 가능합니다.

        ```swift
        func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
        /* 함수 구현부 */
        return
        }

        // 함수 내부에서 전달인자를 사용할 때에는 매개변수 이름을 사용합니다
        func greeting(to friend: String, from me: String) {
        print("Hello \(friend)! I'm \(me)")
        }

        // 함수를 호출할 때에는 전달인자 레이블을 사용해야 합니다
        greeting(to: "hana", from: "yongin") // Hello hana! I'm yongin
        ````

* 가변 매개변수
    - 전달 받을 값의 개수를 알기 어려울 때 사용합니다.
    - 가변 매개변수는 함수당 하나만 가질 수 있습니다.
    - 기본값이 있는 매개변수와 같이 가변 매개변수 역시 매개변수 목록 중 뒤에 위치하는 것이 좋습니다.

        ```swift
        //func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입...) -> 반환타입 {
        //    /* 함수 구현부 */
        //    return
        //}

        func sayHelloToFriends(me: String, friends: String...) -> String {
        return "Hello \(friends)! I'm \(me)!"
        }
        print(sayHelloToFriends(me: "yongin", friends: "hana", "eric", "wing"))
        // Hello ["hana", "eric", "wing"]! I'm yongin!

        print(sayHelloToFriends(me: "yongin"))
        // Hello []! I'm yongin!
        ````

* 데이터 타입으로서의 함수  
    - 스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어이므로 스위프트의 함수는 일급객체 입니다. 그래서 함수를 변수, 상수 등에 할당이 가능하고 매개변수를 통해 전달 할 수도 있습니다.
    - **함수의 타입표현** : 반환 타입을 생략할 수 없습니다.
    
        ```swift
        (매개변수1타입, 매개변수2타입 ...) -> 반환타입
        ````

    - **함수타입 사용**

        ```swift
        var someFunction: (String, String) -> Void = greeting(to:from:)
        someFunction("eric", "yongin") // Hello eric! I'm yongin

        someFunction = greeting(friend:me:)
        someFunction("eric", "yongin") // Hello eric! I'm yongin


        // 타입이 다른 함수는 할당할 수 없습니다 - 컴파일 오류 발생
        //someFunction = sayHelloToFriends(me: friends:)


        func runAnother(function: (String, String) -> Void) {
        function("jenny", "mike")
        }

        // Hello jenny! I'm mike
        runAnother(function: greeting(friend:me:))

        // Hello jenny! I'm mike
        runAnother(function: someFunction)
        ````
---
 조건문
 -
 * if - else구문
    - if만 단독사용 가능하고, else & else if 와 조합 가능하다.
    - if뒤의 조건값에는 bool형만 위치 가능하다.
    - 조건을 감싸는 소괄호는 선택사항

        ```swift
        let someInteger = 100

        if someInteger < 100 {
        print("100 미만")
        } else if someInteger > 100 {
         print("100 초과")
        } else {
          print("100")
        } // 100

        // 스위프트의 조건에는 항상 Bool 타입이 들어와야 합니다.
        // someInteger는 Bool 타입이 아닌 Int 타입이기 때문에
        // 컴파일 오류가 발생합니다.
        // if someInteger { }
        ````

* switch구문
    - 스위프트의 switch구문은 다른 언어에 비해 상당히 강력하다
        - 기본적으로 사용하던 정수 뿐만 아니라, 대부분의 스위프트 기본 타입을 지원
    - 각 case내부에는 실행 가능한 코드가 위치 해야 함
    - default값은 반드시 작성해야 함
    - break를 명시 하지 않아도 자동으로 break가 가능함.
    - ' fallthrough ' 키워드를 사용하여 break무시 가능.
    - 쉼표 (,)를 사용하여 하나의 case에 여러가지 패턴을 부여 가능함.

        ```swift
        // 범위 연산자를 활용하면 더욱 쉽고 유용합니다
        switch someInteger {
        case 0:
            print("zero")
        case 1..<100:
            print("1~99")
        case 100:
            print("100")
        case 101...Int.max:
            print("over 100")
        default:
            print("unknown")
        } // 100

        // 정수 외의 대부분의 기본 타입을 사용할 수 있습니다
        switch "yongin" {
        case "jake":
            print("jake")
        case "mina":
            print("mina")
        case "yongin":
            print("yongin!!")
        default:
            print("unknown")
        } // yongin!!
        ````

---
 반복문
 * for ~ in 구문
    - 기존 언어의 for - each구문과 비슷하다.
    - Dictionary의 경우, 이터레이션 아이템이 튜플로 들어온다.
        
        ```swift
            var integers = [1, 2, 3]
        let people = ["yagom": 10, "eric": 15, "mike": 12]

        for integer in integers {
            print(integer)
        }

        // Dictionary의 item은 key와 value로 구성된 튜플 타입입니다
        for (name, age) in people {
            print("\(name): \(age)")
        }
        ````
* while구문

     ```swift
         while integers.count > 1 {
            integers.removeLast()   
        }
    ````

* repeat ~ while 구문
    - 기존 언어의 do - while구문과 유사함

        ```swift
             repeat {
                integers.removeLast()
            } while integers.count > 0
        ````

---
 옵셔널
 -
 * 옵셔널이란?
    - 값이 있을 수도 있고, 없을 수도 있음을 표현함
    - nil이 할당될 수 있는지 없는지 표현
        
        ```swift
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

        ````

 * 옵셔널을 쓰는 이유는?
    1. 명시적 표현
        - nil의 가능성을 코드로만 표현 가능
        - 문서/주석 작성 시간을 단축
    2. 안전한 사용
        - 전달 받은 값이 옵셔널이 아니라면, nil은 전혀 고려하지 않아도 됨
        - 예외 상황을 최소화 해주는 코딩방법
        - 효율적인 코딩이 가능함
    
 * 옵셔널 문법과 선언
    - 옵셔널 문법 = enum + generics
        ```swift
        enum Optional<Wrapped>: ExpressibleByNiliteral {
            case none
            case some(Wrapped)
        }

        let optionalValue: Optional<Int> = nil
        let optionalValue: Int? =nil
        ````

    - 옵셔널 표현
        1. 느낌표(!)를 이용한 암시적 추출 옵셔널

            ```swift
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
            ````

        2. 물음표(?)를 이용한 옵셔널

            ```swift
            // Optional
            var optionalValue: Int? = 100

            switch optionalValue {
            case .none:
                print("This Optional variable is nil")
            case .some(let value):
                print("Value is \(value)")
            }

            // nil 할당 가능
            optionalValue = nil

            // 기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산불가
            //optionalValue = optionalValue + 1
            ```
---
 옵셔널 추출
-
 * 옵셔널 추출이란?
    
    -> 옵셔널에 들어있는 값을 사용하기 위해 꺼내오는 것

 * 옵셔널 방식
    1. 옵셔널 바인딩 
        - 1.. nil 체크
        - 2.. 옵셔널 안에 값이 있는지 확인하고, 값이 있으면 값을 꺼내온다.
        - 3.. if-let방식 사용

            ```swift
            func printName(_ name: String) {
            print(name)
            }

            var myName: String? = nil

            //printName(myName)
            // 전달되는 값의 타입이 다르기 때문에 컴파일 오류발생

            if let name: String = myName {
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
            // yourName이 nil이기 때문에 실행되지 않습니다
            yourName = "hana"

            if let name = myName, let friend = yourName {
                print("\(name) and \(friend)")
            }
            // yongin and hana
            ```
    2. 강제 추출
        - 옵셔널에 값이 들어있는지 아닌지 확인하지 않고 강제로 값을 꺼내는 방식. 만약 값이 없을 경우(nil) 런타임 에러가 발생하기 때문에, 추천되지 않는 방식이다.

            ```swift
            var myName: String? = yagom
            var youName: String! = nil


            printName(myName!) // yongin
            myName = nil

            //print(myName!)
            // 강제추출시 값이 없으므로 런타임 오류 발생
            yourName = nil

            //printName(yourName)
            // nil 값이 전달되기 때문에 런타임 오류발생
            ````
---
