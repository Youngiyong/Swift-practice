import UIKit

class Friend {
    var name: String
    
    func changeName(newName: String){
        self.name = newName
    }
    
    init(_ name: String){
        self.name = name
    }
}

var myFriend = Friend("윤대리")
myFriend.changeName(newName: "개발하는 윤대리")
myFriend.name

//struct안에서 멤버변수를 변경하고 싶으면 변수 앞에서 mutating 키워드를 붙이면됨

struct BestFriend {
    var name: String
    
    mutating func changeName(newName: String){
        self.name = newName
    }
    
}

var myBestFriend = BestFriend(name: "윤대리")

myBestFriend.changeName(newName: "하하하")
