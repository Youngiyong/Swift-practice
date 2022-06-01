import UIKit

class MyFriend {
    var name: String
    
    init(_ name: String = "이름 없음"){
        self.name = name
        print("MyFriend가 메모리에 올라갔다.")
    }
    
    deinit {
        print("메모리에서 사라짐 -  \(self.name)")
    }
    
    //denit 검증을 위해 작성
    var calledTimes = 0
    let MAX_TIMES = 5
    
    static var instanceOfSelf = [MyFriend]()

    class func destroySelf(object: MyFriend){
        instanceOfSelf = instanceOfSelf.filter{ (aFriend: MyFriend) in
            aFriend !== object
        }
    }
    
    func call() {
        calledTimes += 1
        print("called \(calledTimes)")
        if  calledTimes > MAX_TIMES {
            MyFriend.destroySelf(object: self)
        }
    }
}


let myFriend = MyFriend("윤대리")
let aFriend = MyFriend()


// Unmanaged.passUnretained(객체).toOpaQue()
// 로 해당 객체이ㅡ 메모리 주소를 프린트 할 수 있다.

let anObjectMemoryAddress = Unmanaged.passUnretained(aFriend).toOpaque()
let secondMemoryAddress = Unmanaged.passUnretained(myFriend).toOpaque()


print(anObjectMemoryAddress)
print(secondMemoryAddress)


weak var aFriendDestroy = MyFriend("개발하는 윤대리")

if aFriendDestroy != nil {
    aFriendDestroy!.call()
} else {
    print("객체가 더 이상 메모리에 없습니다.")
}
