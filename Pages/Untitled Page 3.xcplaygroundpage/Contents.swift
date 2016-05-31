//: [Previous](@previous)

import Foundation

//Enumerations
class Employee {
    var name:String?
    var phoneNumber:String?
    var boss:Employee?
    
    init (name:String) {  // 지정(Designated) 초기화
        self.name = name
    }
    
    convenience init (name:String, phone:String) { // onvenience 초기화, 다양한 초기화를 만들기 위함.
        self.init(name:name)  // 반드시 지정초기화를 호출해야 함.
        self.phoneNumber = phone
    }
}

struct Task {
    var title:String
    var time:Int?
    
    var owner:Employee
    var participant:Employee?
    
    var type:TaskType
    
    enum TaskType {
        case Call
        case Report
        case Meet
        case Support
        
        var typeTitle:String {
            get {
                let titleString:String
                switch self {
                case .Call:
                    titleString = "Call"
                case .Report:
                    titleString = "Report"
                case .Meet:
                    titleString = "Meet"
                case .Support:
                    titleString = "Support"
                }
                return titleString
            }
        }
    }
    
    init(type:TaskType, owner:Employee) {
        self.type = type
        self.title = type.typeTitle
        self.owner = owner
        self.time = nil
        self.participant = nil
    }
}

//let me:Employee = Employee()
//me.name = "Alex"
//me.phoneNumber = "010-1234-5678"
//
//let toby:Employee = Employee()
//toby.name = "Toby"
//toby.phoneNumber = "011-5678-1234"

let me:Employee = Employee(name:"Alex", phone:"010-1234-5678")

let toby:Employee = Employee(name:"Toby")
toby.phoneNumber = "011-5678-1234"

//var callTask = Task(title:"Call to Tody", time: 10*60, owner:me, participant:toby, type:.Call)
//
//var reportTask = Task(title:"Report to Boss", time:nil, owner:me, participant:nil, type:Task.TaskType.Report)
//
var callTask = Task(type:.Call, owner:me)
callTask.time = 10*60

var reportTask = Task(type:.Report, owner:me)

callTask.participant?.phoneNumber = "010-5678-1234"

// Test
let tmpTypeTitile = callTask.type.typeTitle
