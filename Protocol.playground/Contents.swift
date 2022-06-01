import UIKit

// 보통 delegate 패턴의 경우에는 **delegate
// 스위프트 언어자체에는 **ing, **able
// 등으로 프로토콜의 이름을 정함


// 프로토콜을 통해 멤버변수, 메소드등을 꼭 구현하도록 강제
// 프로토콜은 약속 **
protocol Naming {
    // 우리는 이런 변수를 가지고 있을겁니다.
    var name : String { get set }
    
    // 우리는 이런 메소드를 가지고 있을겁니다. 라고 약속
    func getName() ->  String
}

//
struct Friend : Naming{
    var name: String
    
    func getName() -> String {
        <#code#>
        return "내 친구: " + self.name
    }
    
}

var myFriend = Friend(name: "윤대리")


myFriend.getName()
