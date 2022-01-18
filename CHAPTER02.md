# CHAPTER02

 구조체
 -
 * 구조체란?
    - 스위프트 대부분의 타입은 구조체로 이루어져 있다.
    - 구조체는 값(value)타입이다.
    - 타입 이름은 'Upper camel case'를 사용하여 정의한다.

 * 구조체 문법 
    - 구조체 정의 : "struct"키워드 사용

        ```swift
            struct Sample {
            // 가변 프로퍼티(값 변경 가능)
            var mutableProperty: Int = 100 
    
            // 불변 프로퍼티(값 변경 불가능)
            let immutableProperty: Int = 100 
    
            // 타입 프로퍼티(static 키워드 사용 : 타입 자체가 사용하는 프로퍼티)
            static var typeProperty: Int = 100 
    
            // 인스턴스 메서드(인스턴스가 사용하는 메서드)
            func instanceMethod() {
                print("instance method")
            }
    
            // 타입 메서드(static 키워드 사용 : 타입 자체가 사용하는 메서드)
            static func typeMethod() {
                print("type method")
            }
        }
        ````
 * 구조체 사용
    
    ```swift
        // 가변 인스턴스 생성
        var mutable: Sample = Sample()

        mutable.mutableProperty = 200

        // 불변 프로퍼티는 인스턴스 생성 후 수정할 수 없습니다
        // 컴파일 오류 발생
        //mutable.immutableProperty = 200

        // 불변 인스턴스
        let immutable: Sample = Sample()

        // 불변 인스턴스는 아무리 가변 프로퍼티라도
        // 인스턴스 생성 후에 수정할 수 없습니다
        // 컴파일 오류 발생
        //immutable.mutableProperty = 200
        //immutable.immutableProperty = 200


        // 타입 프로퍼티 및 메서드
        Sample.typeProperty = 300
        Sample.typeMethod() // type method

        // 인스턴스에서는 타입 프로퍼티나 타입 메서드를
        // 사용할 수 없습니다
        // 컴파일 오류 발생
        // mutable.typeProperty = 400
        // mutable.typeMethod()

        // -> 구조체 내부에서, static으로 선언된 함수나 프로퍼티(변수)들은
        // 구조체 자체에 종속 된 데이터이기 때문에, 구조체 자체로 접근을 해야함.
    ``` 
---
 클래스
 -
 * 클래스란?
    - 클래스는 참조타입 입니다.
    - 타입 이름은 'Upper Camel Case'를 따릅니다.
    - Swift의 class는 다중상속이 불가능 합니다.
 * 클래스 문법
    - 프로퍼티 (변수) 및 매서드 (함수) 구현

        ```swift
            class Sample {
                // 가변 프로퍼티
                var mutableProperty: Int = 100 

                // 불변 프로퍼티
                let immutableProperty: Int = 100 
    
                // 타입 프로퍼티
                static var typeProperty: Int = 100 
    
                // 인스턴스 메서드
                func instanceMethod() {
                    print("instance method")
                }


                // 타입 메서드
                // 상속시 재정의 불가 타입 메서드 - static
                static func typeMethod() {
                    print("type method - static")
                }

                // 상속시 재정의 가능 타입 메서드 - class
                class func classMethod() {
                    print("type method - class")
                }
            }
        ````

    - 클래스 사용

        ```swift
            // 인스턴스 생성 - 참조정보 수정 가능
            var mutableReference: Sample = Sample()

            mutableReference.mutableProperty = 200

            // 불변 프로퍼티는 인스턴스 생성 후 수정할 수 없습니다
            // 컴파일 오류 발생
            //mutableReference.immutableProperty = 200


            // 인스턴스 생성 - 참조정보 수정 불가
            let immutableReference: Sample = Sample()

           // 클래스의 인스턴스는 참조 타입이므로 let으로 선언되었더라도 인스턴스 프로퍼티의 값 변경이 가능합니다
            immutableReference.mutableProperty = 200

            // 다만 참조정보를 변경할 수는 없습니다
            // 컴파일 오류 발생
            //immutableReference = mutableReference

            // 참조 타입이라도 불변 인스턴스는 
            // 인스턴스 생성 후에 수정할 수 없습니다
            // 컴파일 오류 발생
            //immutableReference.immutableProperty = 200


            // 타입 프로퍼티 및 메서드
            Sample.typeProperty = 300
            Sample.typeMethod() // type method

            // 인스턴스에서는 타입 프로퍼티나 타입 메서드를
            // 사용할 수 없습니다
            // 컴파일 오류 발생
            //mutableReference.typeProperty = 400
            //mutableReference.typeMethod()
        ```
---
 열거형
 -
 * 열거형
    - 유사한 종류의 다른 값들을 한 곳에 모아서 정리해둔 것
    - enum자체가 하나의 데이터 타입으로, Upper Camel Case를 사용하여 이름을 정의한다,
    - 각 case는 Lower Camel Case로 정의한다.
    - 각 case는 그 자체가 고유한 값이다. (각 case에 index와 같이 정수값이 자동으로 할당되지 않음.)
    - 각 case는 한 줄에 한개도, 한 줄에 여러개도 정의 가능하다.

        ```swift
            enum 이름 {
	        case 이름1
	        case 이름2
	        case 이름3, 이름4, 이름5
	        // ...
        }

        // 예제
        enum BoostCamp {
                case iosCamp
                case androidCamp
                case webCamp
        }
        ```
 * 열거형 사용
    - 타입이 명확할 경우, 열거형의 이름을 생략할 수 있다.
    - switch구문에서 사용하면 좋다.

        ```swift
            enum Weekday {
            case mon
            case tue
            case wed
            case thu, fri, sat, sun
        }

        // 열거형 타입과 케이스를 모두 사용하여도 됩니다
        var day: Weekday = Weekday.mon

        // 타입이 명확하다면 .케이스 처럼 표현해도 무방합니다
        day = .tue

        print(day) // tue

        // switch의 비교값에 열거형 타입이 위치할 때
        // 모든 열거형 케이스를 포함한다면
        // default를 작성할 필요가 없습니다
        switch day {
        case .mon, .tue, .wed, .thu:
            print("평일입니다")
        case Weekday.fri:
            print("불금 파티!!")
        case .sat, .sun:
            print("신나는 주말!!")
        }
        ````

* rawValue (원시 값)
    - c언어의 enum처럼 정수값을 가질 수 있습니다.
    - rawValue는 case별로 각각 다른 값을 가져야합니다.
    - 자동으로 1이 증가된 값이 할당됩니다.
    - rawValue를 반드시 지닐필요가 없다면, 굳이 만들지 않아도 됩니다.

        ```swift
            enum Fruit: Int {
            case apple = 0
            case grape = 1
            case peach
            // case mango = 0

            // mango와 apple의 원시값이 같으므로 
            // mango 케이스의 원시값을 0으로 정의할 수 없습니다
            
            }

            print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")
            // Fruit.peach.rawValue == 2
            // peach에는 자동으로 1증가된 값인 2가 할당됨
        ````
    - 정수형 뿐 아니라, Hashable 프로토콜을 따르는 모든 타입을 원시값의 타입으로 지정 가능하다.

        ```swift
            enum School: String {
            case elementary = "초등"
            case middle = "중등"
            case high = "고등"
            case university
        }

        print("School.middle.rawValue == \(School.middle.rawValue)")
        // School.middle.rawValue == 중등

        // 열거형의 원시값 타입이 String일 때, 원시값이 지정되지 않았다면
        // case의 이름을 원시값으로 사용합니다
        print("School.university.rawValue == \(School.university.rawValue)")
        // School.middle.rawValue == university
        ````
 * 원시값을 이용한 초가화
    - rawValue를 이용하여 초기화가 가능하다.
    - rawValue가 case에 해당하지 않을 수 있으므로, rawValue를 통해 초기화한 인스턴트는 옵셔널 타입이다.

        ```swift
            // rawValue를 통해 초기화 한 열거형 값은 옵셔널 타입이므로 Fruit 타입이 아닙니다
            //let apple: Fruit = Fruit(rawValue: 0)
            let apple: Fruit? = Fruit(rawValue: 0)

            // if let 구문을 사용하면 rawValue에 해당하는 케이스를 곧바로 사용할 수 있습니다
            if let orange: Fruit = Fruit(rawValue: 5) {
                print("rawValue 5에 해당하는 케이스는 \(orange)입니다")
            } else {
                print("rawValue 5에 해당하는 케이스가 없습니다")
            } // rawValue 5에 해당하는 케이스가 없습니다
        ````
 
 * 매서드
    - 스위프트의 열거형에는 매서드도 추가할 수 있다.

        ```swift
            enum Month {
                case dec, jan, feb
                case mar, apr, may
                case jun, jul, aug
                case sep, oct, nov
    
                func printMessage() {
                    switch self {
                    case .mar, .apr, .may:
                        print("따스한 봄~")
                    case .jun, .jul, .aug:
                        print("여름 더워요~")
                    case .sep, .oct, .nov:
                        print("가을은 독서의 계절!")
                    case .dec, .jan, .feb:
                        print("추운 겨울입니다")
                    }
                }
            }
 
            Month.mar.printMessage()
        ````
---
 클래스 vs 구조체/열거형
 -
 1. 클래스는 **참조 타입**, 열거형/구조체는 **값 타입**이라는 것이 가장 큰 차이이다.
 2. 클래스는 상속이 가능하지만, 열거형/구조체는 상속이 불가능하다.

 * 값 타입과 참조 타입 비교
    - 값 타입 (Value Type):데이터를 전달 할 때 값을 복사하여 전달합니다.
    - 참조 타입 (Reference Type): 데이터를 전달 할 때 값의 메모리 위치를 전달합니다.

        ```swift
            struct ValueType {
                var property = 1
            }

            class ReferenceType {
                var property = 1
            }

            // 첫 번째 구조체 인스턴스
            let firstStructInstance = ValueType()

            // 두 번째 구조체 인스턴스에 첫 번째 인스턴스 값 복사
            var secondStructInstance = firstStructInstance

            // 두 번째 구조체 인스턴스 프로퍼티 값 수정
            secondStructInstance.property = 2
            // 두 번째 구조체 인스턴스는 첫 번째 구조체를 똑같이 복사한 
            // 별도의 인스턴스이기 때문에 
            // 두 번째 구조체 인스턴스의 프로퍼티 값을 변경해도
            // 첫 번째 구조체 인스턴스의 프로퍼티 값에는 영향이 없음
            print("first struct instance property : \(firstStructInstance.property)")    // 1
            print("second struct instance property : \(secondStructInstance.property)")  // 2


            // 클래스 인스턴스 생성 후 첫 번째 참조 생성
            let firstClassReference = ReferenceType()
            // 두 번째 참조 변수에 첫 번째 참조 할당
            let secondClassReference = firstClassReference
            secondClassReference.property = 2

            // 두 번째 클래스 참조는 첫 번째 클래스 인스턴스를 참조하기 때문에
            // 두 번째 참조를 통해 인스턴스의 프로퍼티 값을 변경하면
            // 첫 번째 클래스 인스턴스의 프로퍼티 값을 변경하게 됨
            print("first class reference property : \(firstClassReference.property)")    // 2
            print("second class reference property : \(secondClassReference.property)")  // 2
            ````

 * 값 타입을 사용하는 경우
    - 연관된 몇몇의 값들을 모아서 하나의 데이터 타입으로 표현하고 싶은 경우
    - 다른 객체 및 함수로 전달할 때, 참조가 아닌 복사(값 복사)가 필요한 경우
    - 자신을 상속할 필요가 없거나, 다른 타입을 상속 받을 필요가 없는 경우

 * 스위프트에서의 사용
    - 스위프트의 기본 데이터 타입은 모두 구조체이다.
    - 스위프트는 구조체 및 열겨형의 사용을 선호한다.
    - Apple 프레임워크는 대부분 class를 사용한다.
    - 구조체/클래스 선택과 사용은 개발자의 몫이다.

---
 클로저 기본
 -
 * 클로저
    - 클로저는 실행 가능한 코드블럭이다.
    - 함수와는 다르게 이름정의는 필요하지 않지만, 매개변수 전달과 반환 값이 존재 할 수 있다는 점이 동일합니다.
    - 함수는 이름이 있는 클로저 입니다.
    - 일급객체로 전달인자, 변수, 상수 등에 저장 및 전달이 가능합니다.
 * 기본 클로저 문법
    - 클로저는 중괄호{}로 감싸져 있습니다.
    - 괄호를 이용해 파라미터를 정의합니다.
    - '->'를 이용해 반화타입을 명시합니다.
    - "in" 키워드를 이용해 실행 코드와 분리합니다.

        ```swift
            { (매개변수 목록) -> 반환타입 in
                실행 코드
            }
        ````
 * 클로저 사용

    ```swift
        // sum이라는 상수에 클로저를 할당
        let sum: (Int, Int) -> Int = { (a: Int, b: Int) in
            return a + b
        }

        let sumResult: Int = sum(1, 2)
        print(sumResult) // 3
    ````
 * 함수 전달 인자로서의 클로저
    - 클로저는 주로 함수의 전달인자로 많이 사용됩니다.
    - 함수 내부에서 원하는 코드블럭을 실행 할 수 있습니다.

        ```swift
            let add: (Int, Int) -> Int
            add = { (a: Int, b: Int) in
                return a + b
            }

            let substract: (Int, Int) -> Int
            substract = { (a: Int, b: Int) in
                return a - b
            }

            let divide: (Int, Int) -> Int
            divide = { (a: Int, b: Int) in
                return a / b
            }

            func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
                return method(a, b)
            }

            var calculated: Int

            calculated = calculate(a: 50, b: 10, method: add)

            print(calculated) // 60

            calculated = calculate(a: 50, b: 10, method: substract)

            print(calculated) // 40

            calculated = calculate(a: 50, b: 10, method: divide)

            print(calculated) // 5

            //따로 클로저를 상수/변수에 넣어 전달하지 않고, 
            //함수를 호출할 때 클로저를 작성하여 전달할 수도 있습니다.

            calculated = calculate(a: 50, b: 10, method: { (left: Int, right: Int) -> Int in
                return left * right
            })

            print(calculated) // 500
        ````

---
 클로저 고급 - 다양한 클로저 표현
 -
 * 클로저는 아래의 규칙을 통해 다양한 모습으로 나타낼 수 있습니다.
    1. 후행 클로저 : 함수의 매개변수 마지막으로 전달되는 클로저는, 후행클로저로 함수 밖에 구현할 수 있습니다.
    2. 반환타입 생략 : 컴파일러가 타입의 종류를 유추할 수 있는 경우, 매개변수 반환타입을 생략할 수 있습니다.
    3. 단축 인자 이름 : 전달인자의 이름이 굳이 필요없고, 컴파일러가 타입을 유추할 수 있는 경우 축약된 전달인자 이름($0, $1, $2 ...)을 사용할 수 있습니다.
    4. 암시적 반환 표현 : 반환 값이 있는 경우, 암시적으로 클로저의 맨 마지막 줄은 return 키워드를 생략하더라도 반환 값으로 취급합니다.

 * 후행클로저 
    - 클로저가 함수의 마지막 전달인자일 때, 마지막 매개변수의 이름은 생략하고 함수 소괄호 외부에 클로저 구현이 가능

        ```swift
            result = calculate(a: 10, b: 10) { (left: Int, right: Int) -> Int in
                return left + right
            }

            print(result) // 20
        ````
 * 반환타입 생략
    - calculate(a:b:method:)함수의 method 매개변수는 Int타입을 반환 할 것이라는 사실을 컴파일러도 알기 때문에, 굳이 클로저에서 반환타입을 명시해 주지 않아도 됩니다. 대신 in 키워드는 생략할 수 없습니다.

        ```swift
            result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) in
             return left + right})

            print(result) // 20

            // 후행클로저와 함께 사용할 수도 있습니다
            result = calculate(a: 10, b: 10) { (left: Int, right: Int) in
                return left + right
            }

            print(result) // 20
        ````
 
 * 단축 인자이름
    - 클로저의 매개변수 이름이 굳이 불필요 하다면, 단축 인자이름을 활용할 수 있습니다. 단축인자 이름은 클로저의 매개변수 순서대로 $0, $1, $2...처럼 표현합니다.

        ```swift
            result = calculate(a: 10, b: 10, method: {
                return $0 + $1
            })

            print(result) // 20


            // 당연히 후행 클로저와 함께 사용할 수 있습니다
            result = calculate(a: 10, b: 10) {
                return $0 + $1
            }

            print(result) // 20
        ```
 * 암시적 반환표현 
    - 클로저가 반환하는 값이 있다면, return이 명시되어 있지 않더라도 암묵적으로 마지막줄의 결과값은 반환값으로 취급합니다. 

        ```swift
            result = calculate(a: 10, b: 10) {
                $0 + $1
            }

            print(result) // 20

            // 간결하게 한 줄로 표현해 줄 수도 있습니다
            result = calculate(a: 10, b: 10) { $0 + $1 }

            print(result) // 20
        ```

* _**축약전과 축약 후**_

    ```swift
        //축약 전
        result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) -> Int in
            return left + right
        })

        //축약 후
        result = calculate(a: 10, b: 10) { $0 + $1 }

        print(result) // 20
    ````
---
 프로퍼티
- 
 * 프로퍼티의 종류
    1. 인스턴트 저장 프로퍼티
    2. 타입 저장 프로퍼티
    3. 인스턴트 연산 프로퍼티
    4. 타입 연산 프로퍼티
    5. 지연 저장 프로퍼티
 
 * 정의와 사용
    - 프로퍼티는 구조체, 클래스, 열거형 내부에 구현할 수 있습니다.
    - 다만 열거형 내부에는, 연산 프로퍼티만 구현할 수 있습니다.
    - 연산 프로퍼티는 var로만 선언할 수 있습니다.
    - 연산 프로퍼티를 쓰기 전용으로는 구현할 수 있지만, 읽기 전용으로는 구현할 수 없습니다.
    - 읽기 전용으로 구현하려면, get블럭만 작성해주시면 됩니다.
    - 읽기, 쓰기 모두 구현하려면, get과 set블럭을 모두 작성해야 합니다.
    - set블럭에서 암시적 매개변수 newValue를 사용할 수 있습니다.

        ```swift
            struct Student {
    
            // 인스턴스 저장 프로퍼티
            var name: String = ""
            var `class`: String = "Swift"
            var koreanAge: Int = 0
    
            // 인스턴스 연산 프로퍼티
            var westernAge: Int {
                get {
                    return koreanAge - 1
                }

                set(inputValue) {
                    koreanAge = inputValue + 1
                }
            }
    
            // 타입 저장 프로퍼티
            static var typeDescription: String = "학생"

            /*
            // 인스턴스 메서드
            func selfIntroduce() {
                print("저는 \(self.class)반 \(name)입니다")
            }
            */
    
            // 읽기전용 인스턴스 연산 프로퍼티
            // 간단히 위의 selfIntroduce() 메서드를 대체할 수 있습니다
            var selfIntroduction: String {
                get {
                    return "저는 \(self.class)반 \(name)입니다"
                }
            }

            /*
            // 타입 메서드
            static func selfIntroduce() {
                print("학생타입입니다")
            }
            */
    
            // 읽기전용 타입 연산 프로퍼티
            // 읽기전용에서는 get을 생략할 수 있습니다
            static var selfIntroduction: String {
                return "학생타입입니다"
            }
        }

        // 타입 연산 프로퍼티 사용
        print(Student.selfIntroduction)
        // 학생타입입니다

        // 인스턴스 생성
        var yongin: Student = Student()
        yongin.koreanAge = 10

        // 인스턴스 저장 프로퍼티 사용
        yongin.name = "yongin"
        print(yongin.name)
        // yongin

        // 인스턴스 연산 프로퍼티 사용
        print(yongin.selfIntroduction)
        // 저는 Swift반 yongin입니다

        print("제 한국나이는 \(yongin.koreanAge)살이고, 미쿡나이는 \(yongin.westernAge)살입니다.")
        // 제 한국나이는 10살이고, 미쿡나이는 9살입니다.        
        ```

 * 응용
    
    ```swift
        struct Money {
            var currencyRate: Double = 1100
            var dollar: Double = 0
            var won: Double {
                get {
                    return dollar * currencyRate
                }
                set {
                    dollar = newValue / currencyRate
                }
            }
        }

        var moneyInMyPocket = Money()

        moneyInMyPocket.won = 11000

        print(moneyInMyPocket.won)
        // 11000

        moneyInMyPocket.dollar = 10

        print(moneyInMyPocket.won)
        // 11000
    ````
 
 * 지역변수와 전역변수
    - 저장 프로퍼티와 연산 프로퍼티의 기능은 함수, 메서드, 클로저, 타입 등의 외부에 위치한 지역/전역 변수에도 모두 사용 가능합니다.
    
        ```swift
            var a: Int = 100
            var b: Int = 200
            var sum: Int {
                return a + b
            }

            print(sum) // 300
        ````

---
 프로퍼티 감시자
 -
 * 프로퍼티 감시자
    - 프로퍼티 감시자를 사용하면, **프로퍼티 값이 변경될 때** 원하는 동작을 수행할 수 있다.
    - 값이 변경되기 직전에 **willset**블럭이, 값이 변경된 직후에 **didset**블럭이 호출 됩니다.
    - 둘 중, 필요한 하나만 구현해도 상관 없음.
    - 변경되려는 값이 **기존과 동일한 값이더라도** 프로퍼티 감시자는 항상 동작함.
    - **willset**블럭에서는 암시적 매개변수 **newValue**를, **didset**블럭에서는 **oldValue**를 사용할 수 있다.
    - 프로퍼티 감시자는, 연산 프로퍼티에는 사용할 수 없다
    - 프로퍼티 감시자는 함수/매서드/클로저/타입 등의 지역&전역 변수 모두에서 사용 가능하다.

 * 정의 및 사용


    ```swift
        struct Money {
            // 프로퍼티 감시자 사용
            var currencyRate: Double = 1100 {
                willSet(newRate) {
                    print("환율이 \(currencyRate)에서 \(newRate)으로 변경될 예정입니다")
                }
        
                didSet(oldRate) {
                    print("환율이 \(oldRate)에서 \(currencyRate)으로 변경되었습니다")
                }
            }

            // 프로퍼티 감시자 사용
            var dollar: Double = 0 {
                // willSet의 암시적 매개변수 이름 newValue
                willSet {
                    print("\(dollar)달러에서 \(newValue)달러로 변경될 예정입니다")
                }
        
                // didSet의 암시적 매개변수 이름 oldValue
                didSet {
                    print("\(oldValue)달러에서 \(dollar)달러로 변경되었습니다")
                }
            }

            // 연산 프로퍼티
            var won: Double {
                get {
                    return dollar * currencyRate
                }
                set {
                    dollar = newValue / currencyRate
                }
        
                /* 프로퍼티 감시자와 연산 프로퍼티 기능을 동시에 사용할 수 없습니다
                willSet {
            
                }
                */
            }    
        }

        var moneyInMyPocket: Money = Money()

        // 환율이 1100.0에서 1150.0으로 변경될 예정입니다
        moneyInMyPocket.currencyRate = 1150
        // 환율이 1100.0에서 1150.0으로 변경되었습니다

        // 0.0달러에서 10.0달러로 변경될 예정입니다
        moneyInMyPocket.dollar = 10
        // 0.0달러에서 10.0달러로 변경되었습니다

        print(moneyInMyPocket.won)
        // 11500.0
    ````
---
 상속
 -
 * 스위프트 상속
    - 상속은 클래스, 프로토콜 등에서 가능합니다.
    - 열거형/구조체는 상속이 불가능!!
    - 스위프트의 클래스는 **단일 상속만 가능!!** (다중 상속 불가능)
 * 사용
    - **final** 키워드를 사용하면 재정의(override)를 방지 할 수 있다.
    - **static** 키워드를 사용하여 타입매서드를 만들면, 재정의(override)가 불가능하다.
    - **class** 키워드를 사용하여 타입 매서드를 만들면 재정의가 가능하다.
    - **class**앞에 **final**을 붙이면, **static**키워드를 사용한 것과 동일하게 동작한다.
    - **override**를 사용하여, 부모클래스에서 정의된 매서드를 재정의 가능하다.

        ```swift
            // 기반 클래스 Person
            class Person {
                var name: String = ""
    
                func selfIntroduce() {
                    print("저는 \(name)입니다")
                }
    
                // final 키워드를 사용하여 재정의를 방지할 수 있습니다
                final func sayHello() {
                    print("hello")
                }
    
                // 타입 메서드
                // 재정의 불가 타입 메서드 - static
                static func typeMethod() {
                    print("type method - static")
                }
    
                // 재정의 가능 타입 메서드 - class
                class func classMethod() {
                    print("type method - class")
                }
    
                // 재정의 가능한 class 메서드라도 
                // final 키워드를 사용하면 재정의 할 수 없습니다
                // 메서드 앞의 `static`과 `final class`는 똑같은 역할을 합니다
                final class func finalCalssMethod() {
                    print("type method - final class")
                }
            }

            // Person을 상속받는 Student
            class Student: Person {
                var major: String = ""
    
                override func selfIntroduce() {
                    print("저는 \(name)이고, 전공은 \(major)입니다")
                }
    
                override class func classMethod() {
                    print("overriden type method - class")
                }
    
            // static을 사용한 타입 메서드는 재정의 할 수 없습니다
            //    override static func typeMethod() {    }
    
            // final 키워드를 사용한 메서드, 프로퍼티는 재정의 할 수 없습니다
            //    override func sayHello() {    }
            //    override class func finalClassMethod() {    }

            }

        ```
---
 인스턴스의 생성과 소멸
 -
 * 프로퍼티 초기값
    - 스위프트의 모든 인스턴스는 _**초기화와 동시에 모든 프로퍼티에 유효한 값이 들어있어야 한다.**_
    - 프로퍼티에 미리 값을 할당해두면, 인스턴스가 생성됨과 동시에 초기값을 지니게 된다. 

        ```swift
            class PersonA {
                // 모든 저장 프로퍼티에 기본값 할당
                var name: String = "unknown"
                var age: Int = 0
                var nickName: String = "nick"
            }

            // 인스턴스 생성
            let jason: PersonA = PersonA()

            // 기본값이 인스턴스가 지녀야 할 값과 맞지 않다면
            // 생성된 인스턴스의 프로퍼티에 각각 값 할당
            jason.name = "jason"
            jason.age = 30
            jason.nickName = "j"
        ````
 * 이니셜라이저
    - 프로퍼티의 초기값을 지정하기 어려운 경우에는, **init**을 통해 인스턴스가 가져야 할 초기값을 지정해줄 수 있다.

        ```swift
            class PersonB {
                var name: String
                var age: Int
                var nickName: String
    
                // 이니셜라이저
                init(name: String, age: Int, nickName: String) {
                    self.name = name
                    self.age = age
                    self.nickName = nickName
                }
            }

            let hana: PersonB = PersonB(name: "hana", age: 20, nickName: "하나")
        ```
    - 만약 프로퍼티의 초기값이 꼭 필요한 경우가 아니라면, 프러퍼티의 타입을 옵셔널로 정의해준다.
    - 암시적 추출 옵셔널은 인스턴스 사용에 꼭 필요하지만, 초기값을 할당하지 않고자 할 때 사용한다.
    - 또한, **class내부**의 **init**을 사용 할 때에는 **convenience** 키워드를 사용한다
        ```swift
            class PersonC {
                var name: String
                var age: Int
                var nickName: String?
    
                init(name: String, age: Int, nickName: String) {
                    self.name = name
                    self.age = age
                    self.nickName = nickName
                }

            // 위와 동일한 기능 수행
            // convenience init(name: String, age: Int, nickName: String) {
            //       init(name: name, age: age)
            //       self.nickName = nickName
            //  }
    
                init(name: String, age: Int) {
                    self.name = name
                    self.age = age
                }
            }

            let jenny: PersonC = PersonC(name: "jenny", age: 10)
            let mike: PersonC = PersonC(name: "mike", age: 15, nickName: "m")﻿

            ``` 
  * 실패 가능한 이니셜라이저
    - 이니셜라이저 매개변수로 전달되는 초기값이 잘못된 경우 인스턴스 생성에 실패할 수 있습니다.
    - 인스턴스 생성에 실패하면 nil을 반환합니다.
    - 실패가능한 이니셜라이저의 반환타입은 옵셔널 타입입니다.
    - **init?** 을 사용합니다.

        ```swift
            class PersonD {
                var name: String
                var age: Int
                var nickName: String?
    
                init?(name: String, age: Int) {
                    if (0...120).contains(age) == false {
                        return nil
                    }
        
                    if name.characters.count == 0 {
                        return nil
                    }
        
                    self.name = name
                    self.age = age
                }
            }

            //let john: PersonD = PersonD(name: "john", age: 23)
            let john: PersonD? = PersonD(name: "john", age: 23)
            let joker: PersonD? = PersonD(name: "joker", age: 123)
            let batman: PersonD? = PersonD(name: "", age: 10)

            print(joker) // nil
            print(batman) // nil
        `````
 * 디이니셜라이저
    - **deinit**은 클래스의 인스턴스가 메모리에서 해제되는 시점에 호출됩니다.
    - 인스턴스가 해제되는 시점에 해야할 일을 구현할 수 있습니다.
    - **deinit**은 매개변수를 가질 수 없습니다.
    - 자동으로 호출되므로, 직접 호출할 수 없습니다.
    - _**클래스타입에만**_ 구현할 수 있습니다.
    - 인스턴스가 메모리에서 해제되는 시점은 ARC(Automatic Reference Counting)에 따라서 결정됩니다.

        ```swift
        class PersonE {
            var name: String
            var pet: Puppy?
            var child: PersonC
    
            init(name: String, child: PersonC) {
                self.name = name
                self.child = child
            }
    
            // 인스턴스가 메모리에서 해제되는 시점에 자동 호출
            deinit {
                if let petName = pet?.name {
                    print("\(name)가 \(child.name)에게 \(petName)를 인도합니다")
                    self.pet?.owner = child
                }
            }
        }

        var donald: PersonE? = PersonE(name: "donald", child: jenny)
        donald?.pet = happy
        donald = nil 
        // donald 인스턴스가 더이상 필요없으므로 메모리에서 해제됩니다
        // donald가 jenny에게 happy를 인도합니다
        ````
---
 옵셔널 체이닝과 nil 병합 연산자
 - 
 * 옵셔널 체이닝
    - 옵셔널 체이닝은 옵셔널의 내부의 내부의 내부의...로 옵셔널이 연결되어 있을 때 활용 가능하다.
    - 매번 nil을 확인하지 않고, 최종적인 값이 원하는 값인지 아닌지 확인 가능

        ```swift
        // 예제 클래스
        // 사람 클래스
        class Person {
            var name: String
            var job: String?
            var home: Apartment?
            
            init(name: String) {
                self.name = name
            }
        }
        // 사람이 사는 집 클래스
        class Apartment {
            var buildingNumber: String
            var roomNumber: String
            var `guard`: Person?
            var owner: Person?

            init(dong: String, ho: String) {
                buildingNumber = dong
                roomNumber = ho
            }
        }


        // 옵셔널 체이닝 사용
        let yagom: Person? = Person(name: "yagom")
        let apart: Apartment? = Apartment(dong: "101", ho: "202")
        let superman: Person? = Person(name: "superman")


        // 옵셔널 체이닝이 실행 후 결과값이 nil일 수 있으므로
        // 결과 타입도 옵셔널입니다

        // 만약 우리집의 경비원의 직업이 궁금하다면..?

        // 옵셔널 체이닝을 사용하지 않는다면...
        func guardJob(owner: Person?) {
            if let owner = owner {
                if let home = owner.home {
                    if let `guard` = home.guard {
                        if let guardJob = `guard`.job {
                            print("우리집 경비원의 직업은 \(guardJob)입니다")
                        } else {
                            print("우리집 경비원은 직업이 없어요")
                        }
                    }
                }
            }
        }

        guardJob(owner: yagom)

        // 옵셔널 체이닝을 사용한다면
        func guardJobWithOptionalChaining(owner: Person?) {
            if let guardJob = owner?.home?.guard?.job {
                print("우리집 경비원의 직업은 \(guardJob)입니다")
            } else {
                print("우리집 경비원은 직업이 없어요")
            }
        }

        guardJobWithOptionalChaining(owner: yagom)
        // 우리집 경비원은 직업이 없어요


        yagom?.home?.guard?.job // nil

        yagom?.home = apart

        yagom?.home // Optional(Apartment)
        yagom?.home?.guard // nil

        // 경비원 할당
        yagom?.home?.guard = superman

        yagom?.home?.guard // Optional(Person)

        yagom?.home?.guard?.name // superman
        yagom?.home?.guard?.job // nil

        yagom?.home?.guard?.job = "경비원"
        ````
* nil 병합 연산자.
    - 중위 연산자이다. => **' ?? '**
    - optional ?? value
    - 옵셔널 값이 nil일 경우, 우측의 값을 반환합니다.
    - 띄어쓰기가 중요하다!!!

        ```swift
        var guardJob: String
    
        guardJob = yagom?.home?.guard?.job ?? "슈퍼맨"
        // 앞의 값이 nil이라면, "슈퍼맨"을 할당해라
        print(guardJob) // 경비원

        yagom?.home?.guard?.job = nil

        guardJob = yagom?.home?.guard?.job ?? "슈퍼맨"
        print(guardJob) // 슈퍼맨
        ````
---
 타입 캐스팅
 -
 * 스위프트 타입 캐스팅
    - 인스턴스의 타입을 확인하는 용도
    - 클래스의 인스턴스를 부모 혹은 자식이 사용할 수 있는지 확인하는 용도
    - **is** , **as**를 사용한다.

 * 예제 클래스
    
    ```swift
    class Person {
        var name: String = ""
        func breath() {
            print("숨을 쉽니다")
        }
    }

    class Student: Person {
        var school: String = ""
        func goToSchool() {
            print("등교를 합니다")
        }
    }

    class UniversityStudent: Student {
        var major: String = ""
        func goToMT() {
            print("멤버쉽 트레이닝을 갑니다 신남!")
        }
    }

    // 인스턴스 생성
    var yagom: Person = Person()
    var hana: Student = Student()
    var jason: UniversityStudent = UniversityStudent()
    ````
* 타입 확인
    - **is**를 이용하여 타입을 확인

        ```swift
        var result: Bool

        result = yagom is Person // true
        result = yagom is Student // false
        result = yagom is UniversityStudent // false

        result = hana is Person // true
        result = hana is Student // true
        result = hana is UniversityStudent // false

        result = jason is Person // true
        result = jason is Student // true
        result = jason is UniversityStudent // true

        if yagom is UniversityStudent {
            print("yagom은 대학생입니다")
        } else if yagom is Student {
            print("yagom은 학생입니다")
        } else if yagom is Person {
            print("yagom은 사람입니다")
        } // yagom은 사람입니다

        switch jason {
        case is Person:
            print("jason은 사람입니다")
        case is Student:
            print("jason은 학생입니다")
        case is UniversityStudent:
            print("jason은 대학생입니다")
        default:
            print("jason은 사람도, 학생도, 대학생도 아닙니다")
        } // jason은 사람입니다

        switch jason {
        case is UniversityStudent:
            print("jason은 대학생입니다")
        case is Student:
            print("jason은 학생입니다")
        case is Person:
            print("jason은 사람입니다")
        default:
            print("jason은 사람도, 학생도, 대학생도 아닙니다")
        } // jason은 대학생입니다
        ````

 * 업 캐스팅 (Up Casting)
    - **as**를 사용하여 **부모클래스의 인스턴스로**로 사용할 수 있도록 컴파일러에게 타입정보를 전환해줍니다.
    - **Any** 또는 **AnyObject**로도 변환할 수 있습니다.
    - 암시적으로 처리되므로 꼭 필요한 경우가 아니면 생략해도 무방함.

        ```swift
        // UniversityStudent 인스턴스를 생성하여 Person 행세를 할 수 있도록 업 캐스팅
        var mike: Person = UniversityStudent() as Person

        var jenny: Student = Student()
        //var jina: UniversityStudent = Person() as UniversityStudent // 컴파일 오류

        // UniversityStudent 인스턴스를 생성하여 Any 행세를 할 수 있도록 업 캐스팅
        var jina: Any = Person() // as Any 생략가능
        ````

 * 다운 캐스팅 (Down Casting)
    - as! 또는 as?를 사용하여 **자식클래스의 인스턴스로 사용**가능하도록 컴파일러에게 인스턴스의 타입 정보를 전환해준다.

        1. 조건부 다운캐스팅
            - as?를 사용합니다.
            - 캐스팅에 실패하면, 즉 캐스팅 하려는 타입에 부합하지 않는 인스턴스라면 nil을 반환하기 때문에 결과의 타입은 옵셔널 타입입니다.

                ```swift
                var optionalCasted: Student?

                optionalCasted = mike as? UniversityStudent
                optionalCasted = jenny as? UniversityStudent // nil
                optionalCasted = jina as? UniversityStudent // nil
                optionalCasted = jina as? Student // nil 
                `````

        2. 강제 다운캐스팅
            - as!를 사용합니다.
            - 캐스팅에 실패하면, 즉 캐스팅 하려는 타입에 부합하지 않는 인스턴스라면 **런타임 에러**가 발생합니다.
            - 캐스팅에 성공하면 옵셔널타입이 아닌 일반 타입을 반환합니다.

                ```swift
                var forcedCasted: Student

                forcedCasted = mike as! UniversityStudent
                //forcedCasted = jenny as! UniversityStudent // 런타임 오류
                //forcedCasted = jina as! UniversityStudent // 런타임 오류
                //forcedCasted = jina as! Student // 런타임 오류
                ````

 * 활용 
    
    ```swift
    func doSomethingWithSwitch(someone: Person) {
        switch someone {
        case is UniversityStudent:
            (someone as! UniversityStudent).goToMT()
        case is Student:
            (someone as! Student).goToSchool()
        case is Person:
            (someone as! Person).breath()
        }
    }

    doSomethingWithSwitch(someone: mike as Person) // 멤버쉽 트레이닝을 갑니다 신남!
    doSomethingWithSwitch(someone: mike) // 멤버쉽 트레이닝을 갑니다 신남!
    doSomethingWithSwitch(someone: jenny) // 등교를 합니다
    doSomethingWithSwitch(someone: yagom) // 숨을 쉽니다


    func doSomething(someone: Person) {
        if let universityStudent = someone as? UniversityStudent {
            universityStudent.goToMT()
        } else if let student = someone as? Student {
            student.goToSchool()
        } else if let person = someone as? Person {
            person.breath()
        }
    }

    doSomething(someone: mike as Person) // 멤버쉽 트레이닝을 갑니다 신남!
    doSomething(someone: mike) // 멤버쉽 트레이닝을 갑니다 신남!
    doSomething(someone: jenny) // 등교를 합니다
    doSomething(someone: yagom) // 숨을 쉽니다
    ````
---
 assert & guard
 -
 * Assertion
    - **assert(_ : _ : file : file)** 함수를 사용한다
    - assert함수는 디버깅 모드에서만 동작한다.
    - 배포하는 어플리케이션 에서는 제외된다.
    - 예상했던 조건의 검증을 위해서 사용된다.

        ```swift
        var someInt: Int = 0

        // 검증 조건과 실패시 나타날 문구를 작성해 줍니다
        // 검증 조건에 부합하므로 지나갑니다
        assert(someInt == 0, "someInt != 0")

        someInt = 1
        //assert(someInt == 0) // 동작 중지, 검증 실패
        //assert(someInt == 0, "someInt != 0") // 동작 중지, 검증 실패
        // assertion failed: someInt != 0: file guard_assert.swift, line 26


        func functionWithAssert(age: Int?) {
    
            assert(age != nil, "age == nil")
    
            assert((age! >= 0) && (age! <= 130), "나이값 입력이 잘못되었습니다")
            print("당신의 나이는 \(age!)세입니다")
        }

        functionWithAssert(age: 50)
        //functionWithAssert(age: -1) // 동작 중지, 검증 실패
        //functionWithAssert(age: nil) // 동작 중지, 검증 실패
        ````
 * guard (빠른 종료 - Early Exit)
    - **guard**를 사용하여 잘못된 값 전달 시 특정 실행구문을 빠르게 종료한다.
    - 디버깅 모드 뿐 아니라, 모든 조건에서 실행된다.
    - **guard**의 **else**블럭 내부에는 특정**코드블럭을 종료하는 지시어 (return, break등)**가 꼭 있어야 한다.
    - 타입캐스팅, 옵셔널 등과 자주 사용된다.
    - 그 외에도 단순 조건 판단 후 빠르게 종료할 때에도 사용

        ```swift
        func functionWithGuard(age: Int?) {
    
            guard let unwrappedAge = age,
                unwrappedAge < 130,
                unwrappedAge >= 0 else {
                print("나이값 입력이 잘못되었습니다")
                return
            }
    
            print("당신의 나이는 \(unwrappedAge)세입니다")
        }

        var count = 1

        while true {
            guard count < 3 else {
                break
            }
            print(count)
            count += 1
        }
        // 1
        // 2

        func someFunction(info: [String: Any]) {
            guard let name = info["name"] as? String else {
                return
            }
    
            guard let age = info["age"] as? Int, age >= 0 else {
                return
            }
    
            print("\(name): \(age)")
        }

        someFunction(info: ["name": "jenny", "age": "10"])
        someFunction(info: ["name": "mike"])
        someFunction(info: ["name": "yagom", "age": 10]) // yagom: 10
        ````
---
