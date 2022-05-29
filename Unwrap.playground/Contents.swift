import UIKit

// 옵셔널이란??
// 값이 있는지 없는지 모른다.

var someVariable : Int? = nil

//변수에 값을 넣는다.
if someVariable == nil {
    someVariable = 90
}

//변수에 값이 비어있는지 확인한다.
if let otherVariable = someVariable {
    print("값이 있다. otherVariable : \(otherVariable)")
} else {
    print("값이 없다.")
}
 

someVariable = nil
//someVariable에 값이 없다면 기본값으로 요녀석을 넣겠다.

let myValue = someVariable ?? 10
var emptyVariable :Int?
print("myValue: \(myValue)")

var firstValue : Int = 30
var secoundValue: Int = 50

print("firstValue: \(firstValue)")
print("secoundValue: \(secoundValue)")

myFunction(firstValue)
myFunction(secoundValue)
//myFunction(parameter: myValue)
//myFunction(parameter: emptyVariable)

func myFunction(_ parameter: Int?){
    print("myFunction() called")
    //값이 없으면 리턴 해버린다. 즉 지나가버린다.
    guard let unWrappedParam = parameter else { return }
    print("unwrappedParam: \(unWrappedParam)")
}
