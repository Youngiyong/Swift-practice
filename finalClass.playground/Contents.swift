import UIKit


//final 키워드로 다른 클래스가 상속받지 못함 오버라이드 불가능
final class Friend {
    
    var name : String
    
    init(name: String){
        self.name = name
    }
}


class BestFriend : Friend {
        
    override init(name: String){
        super.init(name: "배프 " + name)
    }
}

let myFriend = Friend(name: "윤대리")
let myBestFriend = BestFriend(name: "지희")
