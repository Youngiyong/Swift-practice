import UIKit


// memberwise initializer 때문에 좋다.
//생성자를 만들지 않아서 좋다. 알아서 만들어줌
struct YoutuberStruct {
    var name: String
    var subscribersCount : Int
}

var devJeong =  YoutuberStruct(name: "정대리", subscribersCount: 99999)

var devJeongClone = devJeong

print("===========================struct==============================")
print("값 넣기 전 : devJeongClone.name : \(devJeongClone.name)")

devJeongClone.name = "호롤로롤"

print("값 넣은 후 : devJeongClone.name : \(devJeongClone.name)")
print("값 넣은 후 : devJeong.name : \(devJeong.name)")


//클래스
class YoutuberClass {
    var name: String
    var subscribersCount : Int
    
    //생성자 - 즉 메모리에 올린다.
    //init으로 매개변수 기반 생성자 메소드를 만들어야 매개변수 넣고 객체 생성 가능
    init(name: String, subscribersCount: Int){
        self.name = name
        self.subscribersCount = subscribersCount
    }
}


var devGiyong =  YoutuberClass(name: "윤기용", subscribersCount: 99999)

var devGiyongClone = devGiyong
print("===========================class==============================")
print("값 넣기 전 devGiyongClone.name :  \(devGiyongClone.name)")

devGiyongClone.name = "호로로롤로"
print("값 넣기 전 devGiyongClone.name :  \(devGiyongClone.name)")
print("값 넣은 후  devGiyong.name: \(devGiyong.name)")
