//: [Previous](@previous)

import Foundation

// Class
class Employee {
    var name:String?
    var phoneNumber:String?
    var boss:Employee?
    
    init() {
        name = "Test"
        phoneNumber = "Test"
    }
    
    init(newName:String) {
        name = newName
    }
    
    func testTest() {
        print("Test")
    }
}

struct Task {
    var title:String?
    var time:Int?
    var owner:Employee
    var participant:Employee?
}

let me:Employee = Employee()
me.name = "Alex"
me.phoneNumber = "010-1234-5678"

let tody:Employee = Employee()
tody.name = "Tody"
tody.phoneNumber = "011-5678-1234"

var callTask = Task(title: "Call to Tody",
                      time: 10*60,
                      owner:me,
                      participant: tody)
var reportTask = Task(title: "Report to Boss",
                        time: nil,
                        owner:me,
                        participant: nil)
callTask.participant?.phoneNumber = "010-5678-1234"

