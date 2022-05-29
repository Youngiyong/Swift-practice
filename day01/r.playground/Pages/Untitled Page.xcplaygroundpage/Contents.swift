import UIKit

// isDarkMode = =true
var isDarkMode : Bool = false

//if !isDarkMode {
//    print("다크모드 입니다.")
//} else {
//    print ("다크모드가 아닙니다.")
//}


var title : String = isDarkMode == true ? "다크모드 입니다." : "다크모드가 아닙니다."

print(title);

print("title: \(title)")
