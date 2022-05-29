import UIKit



// String을 반환하는 클로저
let myName : String = {
    return "윤기용"
}()

print(myName)

//클로저 정의
let myRealName : (String) -> String =  { (name: String) -> String in
    return "개발하는 \(name)"
}


print(myRealName("하위"))


let myRealNameLogic : (String) -> Void = { (name: String) in
    print("개발하는 \(name)")
    
}

myRealNameLogic(myName)
