//
//  main.swift
//  Lab_1
//
//  Created by Yura B on 18.09.2024.
//

import Foundation

//MARK: LAB A
//let text : String = readLine()!
//let count = text.count
//var i = 1
//var last : String?
//
//for letter in text {
//    if (last == "!" || last == "." || last == "?") && (String(letter) != "." && String(letter) != "!" && String(letter) != "?") {
//        i += 1
//    }
//    last = String(letter)
//}
//print(i)

//MARK: LAB C
//if let input = readLine() {
//    let array = input.split(separator: " ")
//    let countStairs = Int(array[0])
//    var currentStairs = Int(array[1])
//    let optional = String(array[2])
//    //print(countStairs, currentStairs, optional)
//    if countStairs! >= 1 && countStairs! <= 1000 {
//        if currentStairs! >= 0 && currentStairs! <= countStairs! {
//            if optional == "w" || optional == "W" {
//                currentStairs! += 1
//            }
//            else if optional == "S" || optional == "s" {
//                currentStairs! += 2
//            }
//        }
//    }
//    if currentStairs! > countStairs! {
//        print(countStairs!)
//    }
//    else {
//        print(currentStairs!)
//    }
//}

//MARK: LAB B
var flag : Bool = true
var secondFlag : Bool = true
let countAnimals = Int(readLine()!)
if countAnimals! >= 0 && countAnimals! <= 100000 {
    var addCount = 0
    if let colours = readLine() {
        let array = colours.split(separator: " ").compactMap{Int($0)}
        var dictionary = [Int : Int]()
        while addCount < countAnimals! {
            //if flag == true {
                if array[addCount] < 1000000000 {
                    dictionary[array[addCount], default: 0] += 1
                    //flag = true
                }
                else {
                    flag = false
                    break
                }
            //}
            addCount += 1
        }
        if flag == true {
            let request = Int(readLine()!)
            if request! >= 1 && request! <= 100000 {
                if let animalsColour = readLine() {
                    let colourAnimals = animalsColour.split(separator: " ").compactMap{Int($0)}
                    let countOfcolourAnimals = colourAnimals.count
                    addCount = 0
                    while addCount < request! {
                        if secondFlag == true {
                            if colourAnimals[addCount] < 1000000001 {
                                //secondFlag = true
                                print(dictionary[colourAnimals[addCount], default: 0])
                            }
                           else {
                                secondFlag  = false
                                break
                            }
                       }
                        addCount += 1
                    }
////                    if secondFlag == true {
////                        var i = 0
////                        while i < countOfcolourAnimals {
////                            print(array.filter{$0 == colourAnimals[i]}.count)
////                            i += 1
////                        }
////                    }
                }
            }
        }
    }
}


