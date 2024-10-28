//
//  main.swift
//  Lab_4
//
//  Created by Yura B on 16.10.2024.
//

import Foundation

//MARK: LAB A
//let count = Int(readLine()!)!
//if let input = readLine() {
//    let array = input.split(separator: " ").compactMap{Int($0)}
//    var res = [Int](repeating: 0, count: count)
//    res[0] = array[0]
//    if count > 0 {
//        res[1] = max(array[0], array[1])
//    }
//    if count > 2 {
//        for i in 2..<count {
//            res[i] = max(res[i-1], res[i-2]+array[i])
//        }
//    }
//    print(res[count-1])
//
//}


if let input = readLine() {
    let array = input.split(separator: " ").compactMap{Int($0)}
    var BigArray = [[Int]]()
    
    for _ in 0..<array[0] {
        if let inputS = readLine() {
            let arrayS = inputS.split(separator: " ").compactMap{Int($0)}
            BigArray.append(arrayS)
        }
        //print(BigArray)
    }
    var dp = [[Int]](repeating: [Int](repeating: 0, count: array[1]), count: array[0])
    dp[0][0] = BigArray[0][0]
    for i in 1..<array[0] {
        dp[i][0] = dp[i-1][0] + BigArray[i][0]
//        print("1: ", dp)
    }
    for j in 1..<array[1] {
        dp[0][j] = dp[0][j-1] + BigArray[0][j]
//        print("2", dp)
    }
    //print(dp)
    for i in 2..<array[0]-1 {
        for j in 2..<array[1]-1 {
            var neighbors = [dp[i-1][j], dp[i][j-1], dp[i+1][j], dp[i][j+1]]
                        //if i + 1 < array[0] {
                        //    neighbors.append(dp[i+1][j])
                        //}
                        //if j + 1 < array[1] {
                        //    neighbors.append(dp[i][j+1])
                        //}
            dp[i][j] = neighbors.min()! + BigArray[i][j]
            //print(dp)
            
        }
    }
    print(dp[array[0] - 1][array[1] - 1])
}
