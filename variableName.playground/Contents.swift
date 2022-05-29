import UIKit

//함수 정의
//함수 호출시 매개변수 이름 name

func myFunction(name: String) -> String {
    return "안녕하세요?: \(name) 입니다"
}

//함수, 메소드를 호출한다. call
myFunction(name: "윤기용")

//함수, 메소드 정의
func myFunctionSecond(with name: String) -> String {
    return "안녕하세요?! \(name) 입니다!"
}

myFunctionSecond(with: "호로롤로")


//함수, 메소드 정의
func myFunctionThird(_ name: String) -> String {
    return "안녕하세요?! \(name) 입니다!"
}

myFunctionThird("하하하하")
