import UIKit

var myNumberSet : Set<Int> = Set<Int>()

myNumberSet.insert(1)
myNumberSet.insert(2)
myNumberSet.insert(3)
myNumberSet.insert(4)
myNumberSet.insert(5)
myNumberSet.insert(3)
myNumberSet.insert(3)

myNumberSet.count
myNumberSet


for item in myNumberSet {
    print("item: ", item)
}


var myFriends : Set<String> = ["철수", "영희", "수지"]

myFriends.contains("철수")

var myBestFriends : [String] = ["철수", "영희", "수지"]

myBestFriends.contains("철수")

if let indexToRemove = myFriends.firstIndex(of: "철수2"){
    print("indexToRemove: ", indexToRemove)
    myFriends.remove(at: indexToRemove)
}

myFriends
