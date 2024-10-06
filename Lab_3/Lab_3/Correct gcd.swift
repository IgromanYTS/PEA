//
//  Correct gcd.swift
//  Lab_3
//
//  Created by Yura B on 06.10.2024.
//

import Foundation

var firstNumber = 3
var secondNumber = 4
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
while firstNumber != 0 {
    array = f(a: array[0], b : array[1])
    //print(array)
    if array[0] == 0 {
        print(array[1]*d)
        break
    }
    else {
        while array[0] % 2 == 0 {
            array[0] = array[0] / 2
            
        }
    }
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
