import UIKit





//// Playground - noun: a place where people can play
//
//import UIKit
//
//var str = "Hello, playground"
//
//println("Hello World")
//
//var myVariable = "Fadie "
//var myVariable2 = 2
//
//var vars = myVariable + String(myVariable2)
//
//let explicitDouble: Double = 70
//
//let apples = 3
//let oranges = 5
//let appleSummary = "I have \(apples) apples."
//let fruitSummary = "I have \(oranges) oranges"
//
//var shoppingList = ["catfish", "water", "tulips", "blue paint"]
//shoppingList[1]
//
//var occupations = [
//    "Fadie" : "Designer",
//    "Tim" : "Manager"
//]
//
//occupations["Steve"] = "Teacher"
//
//occupations
//
//let emptyArray = String([])
//
//let emptyDictionary = Dictionary<String, Float>()
//
//let individualScores = [75, 43, 103, 87, 12]
//var teamScore = 0
//for score in individualScores {
//    if score > 50 {
//        teamScore += 3
//    } else {
//        teamScore += 1
//    }
//}
//
//class Swiftbuzz {
//    
//    func isDivisibleBy3(number: Int) -> Bool {
//    if number%3==0 {
//        return true
//    } else {
//    return false
//    }
//    }
//    
//    func isDivisibleBy5(number: Int) -> Bool {
//        if number%5==0 {
//            return true
//        } else {
//            return false
//        }
//    }
//    
//    func isDivisibleBy15(number: Int) -> Bool {
//        if number%15==0 {
//            return true
//        } else {
//            return false
//        }
//    }
//    
//    
//    func play(number: Int) -> String {
//        if isDivisibleBy15(number) {
//            return "SwiftBuzz"
//        }
//        if isDivisibleBy5(number) {
//            return "Buzz"
//        }
//        if isDivisibleBy3(number) {
//            return "Swift"
//        }
//        else {
//            return "\(number)"
//        }
//    }
//}
//
//var me = Swiftbuzz()
//
//me.play(15)
//
//
//for number in (1...25){
//    println(me.play(number))
//}