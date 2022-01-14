import Swift
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

