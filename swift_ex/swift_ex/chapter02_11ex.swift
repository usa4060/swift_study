class Person{
    var name: String = ""
    func breath(){
        print("숨을 쉽니다")
    }
}

class Student: Person {
    var school : String = ""
    func goToSchool(){
        print("학교를 갑니다")
    }
}

class UnivercityStudent: Student{
    var major: String = ""
    func goToMT(){
        print("엠티를 갑니다")
    }
}

var yongin : Person = Person()
var hana : Student = Student()
var jason : UnivercityStudent = UnivercityStudent()


var result:Bool

result = yongin is Person
result = yongin is Student
result = yongin is UnivercityStudent

result = hana is Person
result = hana is Student
result = hana is UnivercityStudent

result = jason is Person
result = jason is Student
result = jason is UnivercityStudent



var mike: Person = UnivercityStudent()
var jenny: Student = Student()
var jina: Any = Person()




var optionalCasted: Student?

optionalCasted = mike as? UnivercityStudent
optionalCasted = jina as? UnivercityStudent
optionalCasted = jenny as? UnivercityStudent


var forcedCasted: Student

forcedCasted = mike as! UnivercityStudent



func doSomethingWithSwitch(someone: Person){
    switch someone{
    case is UnivercityStudent:
        (someone as! UnivercityStudent).goToMT()
    case is Student:
        (someone as! Student).goToSchool()
    case is Person:
        (someone as! Person).breath()
    }
}

doSomethingWithSwitch(someone: mike as Person)
doSomethingWithSwitch(someone: mike )
doSomethingWithSwitch(someone: jenny)
doSomethingWithSwitch(someone: yongin)


func doSomething(someone:Person){
    if let univercityStudent = someone as? UnivercityStudent {
        univercityStudent.goToMT()
    }
    else if let student = someone as? Student{
        student.goToSchool()
    }
    else {
        someone.breath()
    }
}

doSomething(someone: mike as Person)
doSomething(someone: mike)
doSomething(someone: jenny)
doSomething(someone: yongin)


