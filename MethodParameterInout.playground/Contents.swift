import UIKit

//var title = ""

//let jobTitle = "개발자"

//jobTitle = "얍얍"

func sayName(_ name: String){
    print("안녕?! 난 \(name)이얌")
}

sayName("기용")

func sayHi(_ name: String){
    //매개변수 변경 오류 paramter let이기 때문
//    name = "개발하는 기용"
    print("안녕?! 난 \(name)이얌")
}

sayHi("기요옹")

func sayHi2(_ name: inout String){
    name = "개발하는 기용"
    print("안녕?! 난 \(name)이얌")
}

var name = "뭐야??!"

//매개변수 자료형 inout과 값을 넘길때 var변수에 담아서 넘겨야됨
sayHi2(&name)

