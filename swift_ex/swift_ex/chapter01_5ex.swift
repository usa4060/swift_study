var integers: Array<Int> = Array<Int>()
integers.append(1)      // [1]
integers.append(100)    // [1,100]
integers.append(98)
integers.append(22)
integers.insert(10,at: 1)  // 1번 index에 10 집어넣음
print(integers)
print(integers.contains(100))  // true
print(integers.contains(99))   // false

integers.remove(at: 0)  // 1 remove
integers.removeLast()   // 100 remove
integers.removeAll()    // All remove

print(integers.count)          // 0

// integers[0] => 컴파일 오류 발생 (배열이 비어있는 곳은 접근 불가)

// var doubles:Array<Double> = Array<Double>() 와 같은 표현이다.
var doubles:Array<Double> = [Double]()

var strings:[String] = [String]()

var characters:[Character] = []

// 위의 3가지 방식 모두 사용 가능

// let을 사용하여 Array를 선언하면 불변 Array
let immutableArray = [1, 2, 3]

//-----------------------------------------------------------------//
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["Somekey"] = "VALUE"
anyDictionary["anotherKey"] = 100

print(anyDictionary)

anyDictionary["Somekey"] = "Dictionary"
print(anyDictionary)

anyDictionary.removeValue(forKey: "anotherKey")
print(anyDictionary)

anyDictionary["Somekey"] = nil
print(anyDictionary)

let emptyDictionary: [String:Any] = [:]
let initializedDictionary: [String:Any] = ["name":"용인", "age":25, "gender":"남자"]
print(initializedDictionary)

let someValue:Any = initializedDictionary["name"]   // "name"에 해당하는 값의 불확실성 때문에
                                                    // 경고문구가 발생한다.
print(someValue)

//------------------------------------------------------------------//
var integerSet: Set<Int> = Set<Int>()   // 다른 컬렉션들과는 다르게 set은 이 형태로만 정의 가능하다.
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)   // 이런 식으로, 같은 값을 여러번 입력 하여도, Set은 중복을 허용하지 않기 때문에
                        // 한 번만 입력이 된다.
print(integerSet)

print(integerSet.contains(1))  // true
print(integerSet.contains(2))  // false

integerSet.remove(100)
integerSet.removeFirst()
print(integerSet)
print(integerSet.count)

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

let union: Set<Int> = setA.union(setB)
print(union)
let sortedUnion: [Int] = union.sorted()
print(sortedUnion)
let intersection: Set<Int> = setA.intersection(setB)
print(intersection)
let subtracting: Set<Int> = setA.subtracting(setB)
print(subtracting)

