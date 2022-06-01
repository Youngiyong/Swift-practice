import UIKit

enum MismatchError: Error {
    case nameMisMatch
    case numberMisMatch
}

//throw를 통해 에러를 밖으로 던진다.
// 에러를 밖으로 보낸다고 메소드 반환 부분에 throws
func guessMyName(name input: String) throws{
    print("gessMyName() called")
    // 매개변수로 받은 이름이 정대리와 일치하지 않으면
    if input != "윤대리" {
        print("땡땡!")
        //이름 미스매치 에러를 던진다.
        throw MismatchError.nameMisMatch
    }
    
    print("맞췄다!")
}

//에러를 던지지 않겠다.
//try? guessMyName(name: "윤대리아니무니다")

// ! 에러가 무조건 없을거다라는 뜻
//try! guessMyName(name: "윤대리아니무니다")
// do 가 영문법 예시 강조라고 생각하시면 좋음
// do study, do work hard
// 에러 잡아?
// do catch를 이용해 외부로 던지진? 에러를 잡아
// 에러 처리가 가능함

//do {
//    try guessMyName(name: "이대리")
//} catch {
//    print("잡은 에러: \(error)")
//    print("땡땡~ 다음 기회에!")
//}

// 번호를 맞춘다.
// Parameter input: 사용자 숫자 입력
// Returns: bool 맞췄는지 여부

func guessMyNumber(number input: Int) throws -> Bool {
    print("gessMyName() called")
    // 매개변수로 받은 이름이 정대리와 일치하지 않으면
    if input != 10 {
        print("땡땡!")
        //이름 미스매치 에러를 던진다.
        throw MismatchError.numberMisMatch
    }
    
    print("맞췄다!")
    return true
}

do {
    let recevieValue = try guessMyNumber(number: 11)
} catch {
    print("잡은 에러: \(error)")
}

