//: Playground - noun: a place where people can play

import UIKit

let name:String = "JaeRyong"
var greeting = "Hello"
greeting += " " + name


let characters = name.characters
let count = characters.count


let url = "www.codershigh.com"
let hasProtocol = url.hasPrefix("http://")
let hasCom = url.hasSuffix(".com")


print("\(name) has \(count) characters")

var currentSpeed:Int = 110
currentSpeed += 10
currentSpeed += Int(20.5)

let pi = 3.14
let halfPi = 3.14 / 2
let divider = 2
//let halfPi = 3.14/Double(divider)


let halfPi2 = 3.14 / Float(divider)
let halfPi3 = 3.14 / Double(divider)


let intMax = Int.max
let UintMax = UInt.max
let intMin = Int.min
let UintMin = UInt.min

class Test {
    
}

var a = Test()

let time1 = (9, 0, 48)
time1.0

let time2:(h:Int, m:Int, s:Int) = (11, 51, 5)
time2.h

let duration = (time1, time2)

let (start, end) = duration

let endHour = end.h


typealias Time = (h:Int, m:Int, s:Int)
typealias Duration = (start:Time, end:Time)

let today:Duration = ((9, 10, 23), (17, 8, 21))
print("We studies untim \(today.end.h - today.start.h) hours today")


var meetingRooms:Array<String> = ["Banksy", "Rivera", "Kahlo", "Picasso", "Cezanne", "Matisse"]
var groups:[Int] = [10, 8, 14, 9]

meetingRooms   += ["Renoir"]
groups += [100]

meetingRooms[0]
groups[4]

meetingRooms.insert("Test", atIndex:3)

var speedHistory:[Int] = []
speedHistory += [currentSpeed]

let gpsSpeed0901 = 114.1
//speedHistory.append(Int(gpsSpeed0901))
speedHistory += [Int(gpsSpeed0901)]
speedHistory[0]
speedHistory.last




var roomCapacity:[String:Int] = ["Banksy":4, "Rivera":8, "Kahlo":8, "Picasso":10, "Cezanne":20, "Matisse":30]

roomCapacity["Renoir"] = 40
roomCapacity["Kahlo"]

let roomName = [String](roomCapacity.keys)
let capacities = [Int](roomCapacity.values)



let subway2arr:Array<String> = ["시청", "을지로입구", "을지로3가", "을지로4가", "동대문역사문화공원", "신당", "상왕십리", "왕십리", "한양대", "뚝섬", "성수", "건대입구", "구의", "강변", "잠실나루", "잠실", "신천", "종합운동장", "삼성", "선릉", "역삼", "강남", "교대", "서초", "방배", "사당", "낙성대", "서울대입구", "봉천", "신림", "신대방", "구로디지털단지", "대림", "신도림", "문래", "영등포구청", "당산", "합정", "홍대입구", "신촌", "이대", "아현", "충정로"]
let subway2:Set = Set(subway2arr)

subway2.count

let subway3arr:Array<String> = ["지축", "구파발", "연신내", "불광", "녹번", "홍제", "무악제", "독립문", "경복궁", "안국", "종로3가", "을지로3가", "충무로", "동대입구", "약수", "금호", "옥수", "압구정", "신사", "잠원", "고속터미널", "교대", "남부터미널", "양재", "매봉", "도곡", "대치", "학여울", "대청", "일원", "수서", "가락시장", "경찰병원", "오금"]
let subway3:Set = Set(subway3arr)

subway3.count

let transfer = subway2.intersect(subway2)
transfer.count
let notTransfer = subway2.subtract(subway3)
notTransfer.count

let union = subway2.union(subway3)
union.count

let exOR = subway2.exclusiveOr(subway3)
exOR.count

if transfer.count > 0 {
    print("환승역은 \(transfer) 입니다.")
} else {
    print("환승역이 없습니다.")
}


for station in subway2 {
    print("이번 역은 \(station)입니다")
}

for i in 0...3 {
    print("\(i+1) 번째 회의실은 \(roomName[i])입니다.")
}

for(roomName, capacities) in roomCapacity {
    print("\(roomName)의 정원은 \(capacities)명 입니다.")
}

/// switch
for(roomName, capacity) in roomCapacity {
    let roomDescription:String
    switch capacity {
    case 4:
        roomDescription = "\(roomName)은 스터디 룸이며 정원은 \(capacity)명 입니다."
    case 5...10:
        roomDescription = "\(roomName)은 팀 세미나 룸이며 정원은 \(capacity)명 입니다."
    case 11...30:
        roomDescription = "\(roomName)은 그룹 세미나 룸이며 정원은 \(capacity)명 입니다."
    case let caseCapacity where caseCapacity > 30 :
        roomDescription = "\(roomName)의 정원은 \(capacity)명이며 별도의 사용신청이 필요합니다."
    default:
        roomDescription = "\(roomName)의 정보를 다시 확인해 주세요."
    }
}


// Optional
let cheetah:Int = 0
let robotCheetah:Int? = nil
print("I have \(cheetah) cheetah in my house")

if robotCheetah != nil {
    print("I have \(robotCheetah) robot cheetah in my house")
}


var title:String = "Storyboard Prototyping"
var ratings:[Int]? = nil
var supportURL:String? = "test"

supportURL = "www.codershigh.com"
var bookDescription:String = "\(title)"

if ratings != nil {
    bookDescription += "has \(ratings!.count) ratings"
}


if supportURL != nil {
    bookDescription += "\r\nsupport web page : \(supportURL)"
}

print("\(bookDescription)")


if let theRatings = ratings {
    bookDescription += "has \(theRatings.count) ratings"
}

if let theURL = supportURL {
    bookDescription += "\r\nsupport web page: \(theURL)"
}

print("\(bookDescription)")


// 매개변수와 반환값이 없는 경우
func ratingRecord (history:[Double]) -> (average:Double, min:Double, max:Double) {
    var sum = 0.0, min = history[0], max = history[0]
    
    for value in history {
        if min > value { min = value }
        if max < value { max = value }
        sum += value
    }
    
    let average = sum / Double(history.count)
    return (average, min, max)
}

let ratings2:[Double]? = [4.5, 3.0, 5.0, 2.5]

bookDescription = "\(title)"

if let theRatings = ratings2 {
    let record = ratingRecord(theRatings)
    bookDescription += " has \(theRatings.count) ratings, \r\n average is \(record.average), from \(record.min) to \(record.max)"
}




func basicFunc1(a:Int, b:Int = 22) {
    print("a : \(a), b : \(b)")
}

basicFunc1(1)

func basicFunc2(a:Int=11, b:Int=22) {
    print("a : \(a), b : \(b)")
}

basicFunc2()


// 다수의 인자값
func multiFunc1(items:String...) {
    for item in items {
        print(item)
    }
}
multiFunc1("one", "two", "three", "four")

func multiFunc2(items:String..., itemCnt:Int) {
    for item in items {
        print(item)
    }
}
multiFunc2("1", "2", "3", itemCnt:3)

func multiFunc3(itemCnt:Int, items:String...) {
    for item in items {
        print(item)
    }
}
multiFunc3(3, items: "one", "two", "three")


// 수정가능 Parameter
func inOutFunctmp( v:Int) {
    var tmpv = v
    tmpv = tmpv + 12
}
var intValtmp:Int = 12
inOutFunctmp(intValtmp)
print(" >> \(intValtmp)")

func inOutFunc1(inout v:Int) {
    v = v + 12
}

var intVal:Int = 12
inOutFunc1(&intVal)
print(" >> \(intVal)")

func inOutFunc2(inout v:String) {
    v += " Engine"
}
var strVal:String = "Super"
inOutFunc2(&strVal)
print(" >> \(strVal)")


//함수 안의 함수
func firstMethod(xVal:Int) {
    let yVal = 10;
    func secondMethod() {
        print("Second Method")
    }
    secondMethod()
}
firstMethod(1)

func firstMethod2(xVal:Int) {
    let yVal = 10;
    func secondMethod2() {
        print("xVal = \(xVal)")
        print("yVal = \(yVal)")
        print("Second Method")
    }
    secondMethod2()
}
firstMethod2(1)


// 함수 할당 :: 함수의 인자로 함수를 전달 가능.....
func doFunc1(f:Int->Int) {  // f는 func(Int) -> Int 형태의 함수
    let result = f(1)
    print("doFunc1: \(result)")
}

func doFunc2(f:()->Int) {  // f는 입력이 없고 Return Value Int인 형태의 함수
    let result = f()
    print("doFunc2: \(result)")
}

func paraTestFunc(v:Int) -> Int {
    return v * v
}

func paraTestFunc2() -> Int {
    return 100
}

doFunc1(paraTestFunc) // 함수의 이름만 전달
doFunc2(paraTestFunc2)


// 익명함수 1  // 함수를 호출하면서 function 인자를 대신하여 이름이 없는 간단한 기능의 func를 선언하여 전달 가능
doFunc1 ({
        (i:Int)->Int in
        return i + i
})

// 익명함수 2 (리턴타입은 생략 가능)
doFunc1 ({
        (i:Int) in
        return i + i
})

// 익명함수 3 (파라미터 타입 생략 가능)
doFunc1 ({
        (i) in
        return i + i
})

doFunc1 ({
        i in
        return i + i
})

// return 생략되었고, 인자 Idx를 이용해 $0, $1 등등으로 변경하여 접근 가능
doFunc1 ({
    $0 + $0
})

// 파라미터가 없는 경우 in 도 생략
doFunc2 ({
    20
})



// Closer  // return될 때 호출되어 처리되는 값에 대해 Capture되어 이후 사용 됨
func makeFunk() -> () -> () { // 함수를 return
    let str = "Test"
    func displayStr() {
        print(str)
    }
    
    return displayStr
}

let myFunc = makeFunk()
myFunc()  // displayStr()을 Return받아 수행됨.


func myAdder(x:Int) -> (Int) -> (Int) {
    return {
        (y:Int) in
        return x + y
    }
}

let result = myAdder(5) // myAdder는 func내에 있는 익명함수를 return
// 입력된 5는 myAdder의 x 값
let finalResult = result(2) // 익명함수에 2를 인자로 전달하여 이전의 5와 더하기
// 익명함수에서 수신되는 y 값이 2로 전달


// Structure
struct Task {
    var title:String?
    var time:Int?
}

var callTask = Task(title:"Call to Randy", time:10*60) // 초기화
var reportTask = Task()
reportTask.title = "Report ro Boss"

var todayTask:[Task] = []
todayTask += [callTask, reportTask]

todayTask[1].time = 15 * 60
callTask.title = "Call to Toby" // todayTask의 값은 변화하지 않는다.

print("today task = \(todayTask) \r\ncallTask = \(callTask)")



