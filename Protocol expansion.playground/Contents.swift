import UIKit

//이름관련 프로토콜
protocol Naming {
    var lastname: String { get set }
    var firstname: String { get set }
    func getName() -> String
}

// 익스텐션확장을 통해 프로토콜에 메소드 추가 가능
extension Naming {
    func getFullName() -> String {
        self.lastname + " " + self.firstname
    }
}

// Naming 프로토콜을 임플리먼트하는 스트럭트
struct Friend : Naming {
    var lastname: String
    
    var firstname: String
    
    func getName() -> String {
        return self.lastname
    }
}


let myFriend = Friend(lastname: "기용", firstname: "윤")

