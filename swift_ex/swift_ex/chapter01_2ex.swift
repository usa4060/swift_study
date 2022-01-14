// let 상수이름: 타입 = 값
// var 변수이름: 타입 = 값

let constant: String = "차후에 변경이 불가능한 상수 let"
var variable: String = "차후에 변경이 가능한 변수 var"

variable = "변수는 이렇게 다른 값을 할당 할 수 있다."

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


