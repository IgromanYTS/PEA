//
//  main.swift
//  Lab_6
//
//  Created by Yura B on 02.11.2024.
//

import Foundation


//let count = Int(readLine()!)!
//let prefixFunction = readLine()!.split(separator: " ").compactMap { Int($0) }
//
//var z = Array(repeating: 0, count: count)
//
//for i in 1..<count {
//    if prefixFunction[i] > 0 {
//        let start = i - prefixFunction[i] + 1
//        z[start] = max(z[start], prefixFunction[i])
//    }
//}
//
//for i in 1..<count {
//    if z[i] > 0 {
//        for j in 1..<z[i] {
//            if i + j < count && z[i + j] > 0 { break }
//            z[i + j] = z[i] - j
//        }
//    }
//}
//
//print(z.map { "\($0)" }.joined(separator: " "))

//func f(x : Double, a : Double, b : Double) -> Double {
//    let output = x*x + a*x + b
//    return output
//}
//
//let eps = 0.0000001
//if let input = readLine() {
//    let array  = input.split(separator: " ").compactMap{Double($0)}
//    var a = array[0]
//    var b = array[1]
//    
//    var left: Double = -100
//    var right: Double = 100
//    while abs(right-left) > eps {
//        let g = left + (right-left)/3
//        let h = left + (2*(right-left))/3
//        if f(x: g, a: a, b: b) < f(x: h, a: a, b: b) {
//            right = h
//        }
//        else {
//            left = g
//        }
//    }
//    let final = (left+right)/2
//    print(String(format:"%.2f", final))
//}


//func decodeBaconCipher(length: Int, encrypted: String) -> String {
//    var decodedString = ""
//    
//    for i in stride(from: 0, to: length, by: 5) {
//        let chunk = String(encrypted[encrypted.index(encrypted.startIndex, offsetBy: i)..<encrypted.index(encrypted.startIndex, offsetBy: i + 5)])
//        
//        var binary = ""
//        for char in chunk {
//            if char.isUppercase {
//                binary.append("0")
//            } else if char.isNumber {
//                binary.append("1")
//            }
//        }
//        
//        if let decimalValue = Int(binary, radix: 2) {
//            let letterIndex = decimalValue
//            let letter = Character(UnicodeScalar(letterIndex + 65)!)
//            decodedString.append(letter)
//        }
//    }
//    
//    return decodedString
//}
//
//if let lengthString = readLine(), let length = Int(lengthString), let encryptedString = readLine() {
//    let result = decodeBaconCipher(length: length, encrypted: encryptedString)
//    print(result)
//}


let maxValue = 202
let min = -2000000000


if let input = readLine() {
    let array = input.split(separator: " ").compactMap{Int($0)}
    var n = array[0]
    var m = array[1]
    
    var a = Array(repeating: Array(repeating: 0, count: m+2), count: n+1)
    var dp = Array(repeating: Array(repeating: min, count: m+2), count: n+1)
    var countPaths = Array(repeating: Array(repeating: 0, count: m + 2), count: n + 1)
    
    for i in 1...n {
//        dp[i][0] = min
//        dp[i][m+1] = min
        let inputRow = readLine()?.split(separator: " ").compactMap{Int($0)}
        for j in 1...m {
            a[i][j] = inputRow![j-1]
        }
    }
    
    for i in 1...m {
        dp[1][i] = a[1][i]
        countPaths[1][i] = 1
    }
    
    for i in 2...n {
        for j in 1...m {
            dp[i][j] = max(dp[i-1][j-1], dp[i-1][j], dp[i-1][j+1]) + a[i][j]
            if dp[i - 1][j - 1] == maxValue {
                            countPaths[i][j] += countPaths[i - 1][j - 1]
                        }
                        if dp[i - 1][j] == maxValue {
                            countPaths[i][j] += countPaths[i - 1][j]
                        }
                        if dp[i - 1][j + 1] == maxValue {
                            countPaths[i][j] += countPaths[i - 1][j + 1]
                        }
                        
                        countPaths[i][j] %= 1_000_000_000
        }
    }
    var res = min
    var path = 0
    for i in 1...m {
        if dp[n][i] > res {
            res = dp[n][i]
            path = countPaths[n][i]
        }
        else if dp[n][i] == res {
            path = (path + countPaths[n][i]) % 1_000_000_000
        }
        
    }
    print(res, path)
}
