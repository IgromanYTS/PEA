//
//  main.swift
//  Lab_3
//
//  Created by Yura B on 04.10.2024.
//

//MARK: LAB A
import Foundation

//let countInput = Int(readLine()!)!
//var additionalCount = 0
//var additionalArray = [[Int]]()
//while additionalCount < countInput {
//    if let input = readLine() {
//        let app = input.split(separator: " ").compactMap{Int($0)}
//        additionalArray.append(app)
//    }
//    additionalCount += 1
//}
//additionalCount = 0
//while additionalCount < countInput {
//    if additionalArray[additionalCount][0] == 0 || additionalArray[additionalCount][1] == 0 {
//        print(-1)
//        break
//    }
//    findgcd(firstNumb: additionalArray[additionalCount][0], secNumber: additionalArray[additionalCount][1])
//    additionalCount += 1
//}
//
//
//func findgcd(firstNumb : Int, secNumber: Int) {
//    
//    var firstNumber = firstNumb
//    var secondNumber = secNumber
//    var d = 1
//    while firstNumber % 2 == 0 && secondNumber % 2 == 0 {
//        d = d * 2
//        firstNumber = firstNumber / 2
//        secondNumber = secondNumber / 2
//    }
//    while firstNumber % 2 == 0 {
//        firstNumber = firstNumber / 2
//    }
//    while secondNumber % 2 == 0 {
//        secondNumber = secondNumber / 2
//    }
//    var array = [firstNumber, secondNumber]
//    while firstNumber != 0 {
//        array = f(a: array[0], b : array[1])
//        //print(array)
//        if array[0] == 0 {
//            let gcd = array[1]*d
//            let lcm = (firstNumb*secNumber)/gcd
//            //print((firstNumb*secNumber)/gcd)
//            
//            //if gcd == 1 && (firstNumb != 1 && secNumber != 1) || gcd == 0 {
//            if gcd == firstNumb && lcm == secNumber {
//                print(gcd, lcm)
//                //print((firstNumb*secNumber)/gcd)
//                break
//            }
//            else {
//                
//                print(-1)
//                break
//            }
//        }
//        else {
//            while array[0] % 2 == 0 {
//                array[0] = array[0] / 2
//                
//            }
//        }
//    }
//}
//
//func f(a : Int, b : Int) -> [Int] {
//    var A = a
//    var B = b
//    let temp = a
//    if A > B {
//        A = A - B
//    }
//    else {
//        A = B - A
//    }
//    B = min(temp, B)
//    return [A, B]
//}
//








//MARK: LAB B
let countInput = Int(readLine()!)!
var additionalCount = 0
var additionalArray = [[Int]]()
var currentGCD : Int = 0
var lcm : Int = 1
while additionalCount < countInput {
    if let input = readLine() {
        let app = input.split(separator: " ").compactMap{Int($0)}
        additionalArray.append(app)
    }
    additionalCount += 1
}
additionalCount = 0
while additionalCount < countInput {
    lcm = additionalArray[additionalCount][0]
    for i in 0..<additionalArray[additionalCount].count {
        //currentGCD = findgcd(firstNumb: currentGCD, secNumber: additionalArray[additionalCount][i])
        lcm = (lcm * additionalArray[additionalCount][i]) / findgcd(firstNumb: lcm, secNumber: additionalArray[additionalCount][i])
        //print(additionalArray[additionalCount][i-1], additionalArray[additionalCount][i], lcm)
        
        
    }
    additionalCount += 1
    print(lcm)
    //lcm = 1
}

//print(currentGCD)
//print(lcm)

func findgcd(firstNumb : Int, secNumber: Int) -> Int {
    
    var firstNumber = firstNumb
    var secondNumber = secNumber
    var d = 1
    while firstNumber % 2 == 0 && secondNumber % 2 == 0 {
        d = d * 2
        firstNumber = firstNumber / 2
        secondNumber = secondNumber / 2
    }
    while firstNumber % 2 == 0 {
        firstNumber = firstNumber / 2
    }
    while secondNumber % 2 == 0 {
        secondNumber = secondNumber / 2
    }
    var array = [firstNumber, secondNumber]
//    while firstNumber != 0 {
//        array = f(a: array[0], b : array[1])
//        //print(array)
//        if array[0] == 0 {
//            let gcd = array[1]*d
////            if gcd == 1 && (firstNumb != 1 && secNumber != 1) || gcd == 0 {
////                return -1
////                
////            }
//            //else {
//                return gcd
//                //print((firstNumb*secNumber)/gcd)
//                
//            //}
//        }
//        else {
//            while array[0] % 2 == 0 {
//                array[0] = array[0] / 2
//                
//            }
//        }
//    }
//    return 0
    while firstNumber != 0 {
        array = f(a: array[0], b : array[1])
        //print(array)
        if array[0] == 0 {
            return (array[1]*d)
            //break
        }
        else {
            while array[0] % 2 == 0 {
                array[0] = array[0] / 2
                
            }
        }
    }
    return 0
}


func f(a : Int, b : Int) -> [Int] {
    var A = a
    var B = b
    let temp = a
    if A > B {
        A = A - B
    }
    else {
        A = B - A
    }
    B = min(temp, B)
    return [A, B]
}





//Incorrect variant, but working

//func findgcd(_ a: Int, _ b: Int) -> Int {
//    var a = a
//    var b = b
//    while b != 0 {
//        let temp = b
//        b = a % b
//        a = temp
//    }
//    return a
//}
//
//
//func findlcm(_ a: Int, _ b: Int) -> Int {
//    return (a * b) / findgcd(a, b)
//}
//
//
//let countInput = Int(readLine()!)!
//for _ in 0..<countInput {
//    if let input = readLine() {
//        let numbers = input.split(separator: " ").compactMap { Int($0) }
//        let m = numbers[0]
//        var lcm = numbers[1]
//        
//        for i in 2..<m + 1 {
//            lcm = findlcm(lcm, numbers[i])
//        }
//        
//        print(lcm)
//    }
//}

//MARK: LAB C
//var originalArray = [Int]()
//var list = [Int]()
//if let input = readLine() {
//    var array = input.split(separator: " ").compactMap{Int($0)}
//    
//    
////    while array[0] <= array[1] {
////        let variable = array[0]
////        if variable == 2 || variable == 3 || variable == 5 || variable == 7{
////            originalArray.append(variable)
////        }
////        else if variable % 2 != 0 && variable % 3 != 0 && variable % 4 != 0 && variable % 5 != 0 && variable % 6 != 0 && variable % 7 != 0 && variable % 8 != 0 && variable % 9 != 0 {
////            originalArray.append(variable)
////        }
////        array[0] += 1
////    }
//    
//    
//    while array[0] <= array[1] {
//        list.append(array[0])
//        array[0] += 1
//    }
//    //print(list)
//    var i = 0
//    while i < list.count {
//        if list[i] == 0 || list[i] == 1 {
//            i += 1
//        }
//        else {
//            for l in 0..<list.count {
//                
//                if list[l] % list[i] == 0 && list[l] != list[i] {
//                    list[l] = 0
//                }
//            }
//            i += 1
//        }
//    }
//    for count in 0..<list.count {
//        if list[count] != 0 && list[count] != 1 {
//            originalArray.append(list[count])
//        }
//    }
//    //print(list)
//    let result = originalArray.map { String($0) }.joined(separator: " ")
//    print(result)
//}


//Correct variant
//var originalArray = [Int]()
//var list = [Int]()
//if let input = readLine() {
//    var array = input.split(separator: " ").compactMap{Int($0)}
//    while array[0] <= array[1] {
//        list.append(array[0])
//        array[0] += 1
//    }
//    //print(list)
//    var i = 0
//    while i < list.count {
//        if list[i] == 0 || list[i] == 1 {
//            i += 1
//        }
//        else if list[i] == 2 || list[i] == 3 {
//            originalArray.append(list[i])
//            i += 1
//        }
//        else if list[i] % 2 == 0 || list[i] % 3 == 0 {
//            i += 1
//        }
//        else {
//            var k = 5
//            var flag = true
//            while k*k <= list[i] {
//                if list[i] % k == 0 || list[i] % (k+2) == 0 {
//                    flag = false
//                    break
//                }
////                else {
////                    originalArray.append(list[i])
////                }
//                k += 6
//            }
//            if flag {
//                originalArray.append(list[i])
//            }
//            i += 1
//        }
//    }
//    
//    //print(list)
//    let result = originalArray.map { String($0) }.joined(separator: " ")
//    print(result)
//}

