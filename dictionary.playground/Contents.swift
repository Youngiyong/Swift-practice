import UIKit

// 키 : 값
var myFriends = ["bestFriend" : "윤기용",
                 "highschool" : "송화초등학교"]


let myBestFriend = myFriends["bestFriend"]

let myHighSchool = myFriends["highschool"];

let youtubeFriend = myFriends["youtube", default: "친구없음"]


myFriends["bestFriend"] = "개발하는 윤대리"


let myBF = myFriends["bestFriend"]

myFriends["newFriend"] = "철수"
let newFriend = myFriends["newFriend"]

myFriends.updateValue("지희", forKey: "girlFriend")

let girlFriend = myFriends["girlFriend"]

myFriends.updateValue("짹슨", forKey: "bestFriend")

let testFriend = myFriends["bestFriend"]

var emptyDictionary : [String : Int] = [:]
var emptyDictionary2 : [String : Int] = [String : Int]()

emptyDictionary.updateValue(1234, forKey: "test")

print(testFriend)

let myEmptyDictionary : [String : Int] = Dictionary<String, Int>()

myFriends.count

for item in myFriends {
    print("item: ", item)
}
