// Playground - noun: a place where people can play

import UIKit

let testLabel = UILabel(frame: CGRectMake(0,0,120,40))
testLabel.text = "Award"
testLabel.backgroundColor = UIColor.greenColor()
//testLabel.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
testLabel.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
testLabel.font = UIFont(name: "HelveticaNeue-Regular", size: 100)
testLabel.textAlignment = NSTextAlignment.Center
testLabel.layer.masksToBounds = true
testLabel.layer.cornerRadius = 6

testLabel

var v = UIView(frame: CGRectMake(0,0,200,200))
var b = UIButton(frame: CGRectMake(0,0,100,32))

b.setTitle("Test button", forState: UIControlState.Normal);
b.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)

v.addSubview(b)

v


var optionalString: String? = "Hello"
optionalString == nil

var optionalName: String? = "fadie"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

let vegetable = "haloummi"
switch vegetable {
    case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
    case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich"
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup"
}


let interestingNumbers = [
    "Prime" : [2,3,5,7,11,13],
    "Fibonacci" : [1,1,2,3,5,8],
    "Square" : [1,4,9,16,25],
    "Fadie's Numbers" : [100]
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}

largest

var n = 2
while n < 50 {
    n = n * 2
}
n

var m = 2
do {
    m = m * 2
} while m < 200
m

//

var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
firstForLoop

var secondForLoop = 0
for var i = 0; i < 5; ++i {
    secondForLoop += i
}

secondForLoop


func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet("Fadie", "Tuesday")




func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics([5, 3, 100, 3, 9])
statistics.sum
statistics.2




func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum %
}
sumOf()
sumOf(100,100,1000)

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()




let square = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
square.backgroundColor = UIColor.grayColor()
view.addSubview(square)
