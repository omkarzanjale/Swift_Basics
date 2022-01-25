//MARK: TEST
var arr = [2,6,8,5,4,2]
arr.append(10)
arr.remove(at: 2)
for i in 0...arr.count-1 {
    print(arr[i])
}

var a:Set<Int> = [2,3,4,5,6,2,5,7,6,8,8]

var dic: [String:String] = ["3":"5"]
dic["1"] = "One"
dic["2"] = "Two"
dic["3"] = "Three"
dic.removeValue(forKey: "3")
let result = dic.updateValue("TwoUpdated", forKey: "2")
for i in dic.values {
    print(i)
}
print(dic)


//MARK: PRACTICE
//for in loop
func forInLoop() {
    //iterate over numbers
    for i in 0...5 {
        print(i)
    }
    // iterate over array
    let arr = ["First","Second","Third","Fourth"]
    for (key,value) in arr.enumerated() {
        print("Key ",key, " Value ",value)
    }
    //iterate over dict
    let dict = [1:"R1",2:"R2",3:"R3",4:"R4"]
    for (rno,name) in dict {
        print("Rno:",rno," Name:",name)
    }
    //iterate using stride function
    for i in stride(from: 0, to: 10, by: 2) {
        print(i)
    }
}
print()
print("FOR IN LOOP EXAMPLE :")
forInLoop()

//while Loop
func whileLoop() {
    var counter = 0
    while counter<=10 {
        print(counter)
        counter += 2
    }
    var inc = 9
    //repeat while
    repeat {
        print("inc ",inc)
        inc += 2
    }while inc<9
}
print()
print("WHILE LOOP EXAMPLE :")
whileLoop()

//MARK: tuple
func tuple()->(name:String,rno:Int) {

    var tupleTest = ("Name",3,"Address")
    print("Tuple : ",tupleTest)
    tupleTest.1 = 6
    print("Updated : ",tupleTest)
    
    //named tuple
    var studentTuple = (name:"TestName",rno:6)
    print("Name:",studentTuple.name)
    studentTuple.name = "Updated Name"
    print("After updating name :",studentTuple.name)
    
    //return multiple values using tuple
    return studentTuple
}
print()
print("TUPLE EXAMPLE :")
let value = tuple()
print("Rno : ",value.rno)

//MARK: ARRAY
func arrayFunc() {
    var arr = ["1"]
    arr.append("2")
    arr += ["3"]
    arr.insert("4", at: 1)
    print(arr)
}
print()
print("ARRAY EXAMPLE :")
arrayFunc()

//MARK: SET
func setFunc() {
    var name = Set<String>()
    name.insert("A")
    name.insert("B")
    print(name)
    var nm = Set(0..<10)
    nm.insert(0)
    print(nm)
    if let removedEle = name.remove("A") {
        print("removed item :",removedEle)
    }
    print(name)
    
    let a: Set<Int> = [1,3,5,7,9,0]
    let b: Set<Int> = [2,4,6,8,10,0]
    let result = a.union(b)
    print("Union: ",result)
    let intersectionResult = a.intersection(b)
    print("intersection ",intersectionResult)
    
    for i in a {
        print(i)
    }
}
print()
print("SET EXAMPLE :")
setFunc()

//MARK: Dictionaries
func dictionaryFunc() {
    var dict = [2:"Name2", 5:"Name5"]
    dict[3] = "name3"
    if let d = dict.updateValue("name5", forKey: 5) {
        print("name changed from ",d)
    }
    dict.removeValue(forKey: 2)
    print(dict)
    
    for (key,value) in dict {
        print("Key:",key," value:",value)
    }
}
print()
print("DICTIONARY EXAMPLE :")
dictionaryFunc()

//MARK: optional
func optionalFunc() {
    var name: String?
    name = "Test"
    print("Force unwraped : ",name!)
    
    //if let
    if let nm = name {
        print("Using if let :",nm)
    } else {
        print("Nil value found!")
    }
    
    //guard let
    guard let nm = name else {
        print("nil value found!")
         return
    }
    print("USING GUARD LET :",nm)
    
    //nil collising
    print(name ?? "Nil value found!")
    let obj = A()
    obj.b = B()
    print("Optional Chaining ",obj.b?.age)
}
print()
print("OPTIONALS EXAMPLE :")
optionalFunc()

//MARK: STRUCT VS CLASS
class A{
    var name = "testName"
    var b: B?
}
class B{
    var age:Int = 3
}

func structFunc() {
    let obj = Student(name: "Test1", rno: 1)
    //print(obj.name)
    let copyObj = obj
    copyObj.name = "Test2"
    //WILL DIFFERENT FOR STRUCT
    print("OBJ NAME",obj.name)
    print("OBJ COPY NAME:",copyObj.name)
    print(copyObj.pp)
}

class Student {
    var name: String
    var rno:Int
    var pp: Int {
        get {
        return rno+1
        }
    }
    init(name:String, rno:Int) {
        self.name = name
        self.rno = rno
    }
    
    deinit{
        print("Deinited")
    }
}
print()
print("CLASS EXAMPLE :")
structFunc()


//MARK: inheritance

func inheritanceFunc() {
    let obj = Car()
    obj.topSpeed = 200.0
    obj.numberOfTyres = 4
    obj.checkSpeed()
    
}

class Vehicle {
    var topSpeed = 0.0
    var numberOfTyres = 0
    func checkSpeed() {
        print("Top speed is : ",topSpeed)
    }
}

class Car:Vehicle {
    func blowHorn() {
        print("Horn Ok")
        super.numberOfTyres
    }
    
    override func checkSpeed() {
        super.checkSpeed()
    }
}
print()
print("INHERITANCE EXAMPLE :")
inheritanceFunc()
