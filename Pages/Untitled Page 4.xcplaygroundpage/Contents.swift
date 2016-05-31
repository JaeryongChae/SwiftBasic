//: [Previous](@previous)

class Engine {
    var name:String
    var clickCnt:Int?
  
    var engineName:String {  // Computed property는 var만 사용 가능
        get {
            return name
        }
        set (value) {
            self.name = value
        }
    }
    
    init (newName:String) {
        name = newName
    }
    
    func testFun(newValue:Int) {
        print(newValue)
    }
    
    func optionalTest(optStr:String?) {
        if let unwrapStr = optStr {   // optStr이 nil이 아니면 실행
            //let totalStr = optStr! + "!"
            let totalStr = unwrapStr + "!"
            print(totalStr)
        }
        
        guard let unStr = optStr else { return }  // 참이 아니면 else를 수행
        
        let totalStr = unStr + "!"
        print(totalStr)
    }
}

let engine = Engine(newName:"Test")
print(engine.engineName)
engine.engineName = "New Engine"
print(engine.engineName)

engine.testFun(1)

var optVal:String?
optVal = "test"

engine.optionalTest(optVal)