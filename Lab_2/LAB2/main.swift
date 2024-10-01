//
//  main.swift
//  LAB2
//
//  Created by Yura B on 26.09.2024.
//

import Foundation


//MARK: LAB A
//let countButterfly : Int = Int(readLine()!)!
//var addCount = 0
//var arrayButterfly : [Int] = []
//if countButterfly >= 1 && countButterfly <= 100000 {
//    if let input = readLine() {
//        let array = input.split(separator: " ").compactMap{Int($0)}
//        var dictionary = [Int : Int]()
//        while addCount < countButterfly {
//            dictionary[array[addCount], default: 0] += 1
//            addCount += 1
//        }
//        let typesButterfly : Int = Int(readLine()!)!
//        if typesButterfly >= 1 && typesButterfly <= 100000 {
//            if let inputSecond = readLine() {
//                let arrayInput = inputSecond.split(separator: " ").compactMap{Int($0)}
//                addCount = 0
//                while addCount < arrayInput.count {
//                    if dictionary[arrayInput[addCount], default: 0] != 0 {
//                        print("YES")
//                    }
//                    else {
//                        print("NO")
//                    }
//                    addCount += 1
//                }
//                
//            }
//        }
//    }
//}



//MARK: LAB B
//func f(x : Double, a : Double, b : Double, c : Double, d : Double) -> Double {
//    return a*x*x*x + b*x*x + c*x + d
//}
//
//if let input = readLine() {
//    let array = input.split(separator: " ").compactMap{Double($0)}
//    let a = array[0]
//    let b = array[1]
//    let c = array[2]
//    let d = array[3]
//    
//    var right : Double = 1
//    while f(x: right, a : a, b : b, c : c, d: d)*f(x: -right, a : a, b : b, c : c, d: d) >= 0 {
//        right *= 2
//    }
//    var left : Double = -right
//    while right - left > 0.000001 {
//        let middle : Double = (left+right)/2
//        if f(x: middle, a : a, b : b, c : c, d: d) * f(x: right, a : a, b : b, c : c, d: d) > 0 {
//            right = middle
//        }
//        else {
//            left = middle
//        }
//    }
//    print(left)
//}


//MARK: LAB D

//Unfortunately i can't do best solution without binnary search

//if let input = readLine() {
//    let array = input.split(separator: " ").compactMap{Int($0)}
//    if array[0] >= 1 && array[0] <= 10000 && array[1] >= 1 && array[1] <= 10000 {
//        var addCount = 0
//        var sumLength : Int = 0
//        var arrayLength = [Int]()
//        while addCount < array[0] {
//            let inputLength = Int(readLine()!)!
//            arrayLength.append(inputLength)
//            sumLength += inputLength
//            addCount += 1
//            
//        }
//        addCount += 1
//        var result = sumLength/(array[1])
//        //print(result)
//        while arrayLength.reduce(0, { $0 + $1 / result }) < array[1] {
//                result -= 1
//            }
//        print (result > 0 ? result : 0)
//            
//        }
//    }


//
//if let input = readLine() {
//    let array = input.split(separator: " ").compactMap{Int($0)}
//    if array[0] >= 1 && array[0] <= 10000 && array[1] >= 1 && array[1] <= 10000 {
//        var addCount = 0
//        //var sumLength : Int = 0
//        var arrayLength = [Int]()
//        while addCount < array[0] {
//            let inputLength = Int(readLine()!)!
//            arrayLength.append(inputLength)
//            //sumLength += inputLength
//            addCount += 1
//            
//        }
//        var left = 0
//        var right = arrayLength.max() ?? 0
//        var maxLength = 0
//        
//        while left <= right {
//            let mid = (left+right)/2
//            if cutRopes(mid: mid) {
//                maxLength = mid
//                left += 1
//            }
//            else {
//                right -= 1
//            }
//            
//        }
//        
//        func cutRopes(mid : Int) -> Bool {
//            var totalPiece = 0
//            for length in arrayLength {
//                totalPiece += length/mid
//            }
//            return totalPiece>=array[1]
//        }
//        
//        print(maxLength)
//    }
//}

//Unfortunately with python
//def can_cut_rope(ropes, K, length):
//    count = 0
//    for rope in ropes:
//        count += rope // length
//    return count >= K
//
//def max_rope_length(ropes, N, K):
//    left, right = 1, max(ropes)
//    result = 0
//    
//    while left <= right:
//        mid = (left + right) // 2
//        
//        if can_cut_rope(ropes, K, mid):
//            result = mid
//            left = mid + 1
//        else:
//            right = mid - 1
//    
//    return result
//
//def main():
//    N, K = map(int, input().split())
//    ropes = [int(input()) for _ in range(N)]
//
//    result = max_rope_length(ropes, N, K)
//    print(result)
//
//if __name__ == "__main__":
//    main()




//MARK: LAB E
//if let input = readLine() {
//    let array = input.split(separator: " ").compactMap{Int($0)}
//    var dictionary : [Int : [Int]] = [:]
//    var optionalCount = 0
//    while optionalCount < array[0] {
//        let segment = readLine()!
//        let arraySegment = segment.split(separator: " ").compactMap{Int($0)}
//        //dictionary[optionalCount] = Set(arraySegment[0]...arraySegment[1])
//        let setArray = Set(arraySegment[0]...arraySegment[1]).sorted()
//        dictionary[optionalCount] = setArray
//        optionalCount += 1
//    }
////    print(dictionary.count)
////    print(dictionary[0]!.min()!)
////    print(dictionary[1]!.max()!)
//    if let point = readLine() {
//        var finalArray = Array(repeating: 0, count: dictionary.count)
//        let arrayPoint = point.split(separator: " ").compactMap{Int($0)}
//        optionalCount = 0
//        for pointer in arrayPoint {
//            while optionalCount < dictionary.count {
//                if pointer >= dictionary[optionalCount]!.min()! && pointer <= dictionary[optionalCount]!.max()! {
//                    finalArray[optionalCount] += 1
//                
//                }
//                optionalCount += 1
//            }
//        }
//        //print(finalArray)
//        print(finalArray.map { String($0) }.joined(separator: " "))
//        
//    }
//}


//if let input = readLine() {
//    let array = input.split(separator: " ").compactMap{Int($0)}
//    var events : [(Int, Int)] = []
//    var optionalCount = 0
//    while optionalCount < array[0] {
//        let segment = readLine()!
//        let arraySegment = segment.split(separator: " ").compactMap{Int($0)}
//        events.append((min(arraySegment[0], arraySegment[1]), 1))
//        events.append((max(arraySegment[0], arraySegment[1]), -1))
//        optionalCount += 1
//    }
//    var indexPoint : [(Int, Int)] = []
//    if let point = readLine() {
//        let arrayPoint = point.split(separator: " ").compactMap{Int($0)}
//        for (index, points) in arrayPoint.enumerated() {
//            indexPoint.append((points, index))
//        }
//    }
//    events.sort { $0.0 == $1.0 ? $0.1 > $1.1 : $0.0 < $1.0 }
//    indexPoint.sort {$0.0 < $1.0}
//    
//    var segment = 0
//    var eventIndex = 0
//    var result = Array(repeating: 0, count: array[1])
//    
//    for point in indexPoint {
//        let x = point.0
//        let indexPoint = point.1
//        
//        while eventIndex < events.count && events[eventIndex].0 <= x {
//            segment += events[eventIndex].1
//            eventIndex += 1
//        }
//        result[indexPoint] = segment
//    }
//    print(result.map { String($0) }.joined(separator: " "))
//}



//MARK: LAB C
//Unfortunstely with Java
//import java.util.*;
//
//public class Main
//
//{
//  static int t[][], sum[];
//
//  static int weight(int i, int j) {
//    if (i > j) return 0;
//    return sum[j] - sum[i-1];
//  }
//
//  static int go(int i, int j) {
//    int k, temp;
//    if (i > j) return 0;
//
//    if (t[i][j] == Integer.MAX_VALUE) {
//      for (k = i; k <= j; k++) {
//        temp = go(i,k-1) + go(k+1,j) + weight(i,k-1) + weight(k+1,j);
//        if (temp < t[i][j]) t[i][j] = temp;
//      }
//    }
//
//    return t[i][j];
//  }
//
//  public static void main(String[] args) {
//    Scanner con = new Scanner(System.in);
//
//    while(con.hasNextInt()) {
//      int n = con.nextInt();
//      t = new int[n+1][n+1];
//
//      for(int i = 1; i <= n; i++)
//        Arrays.fill(t[i], Integer.MAX_VALUE);
//
//      int m[] = new int[n+1];
//      sum = new int[n+1];
//
//      for(int i = 1; i <= n; i++) {
//        m[i] = con.nextInt();
//        t[i][i] = 0;
//      }
//
//      sum[0] = 0;
//      for(int i = 1; i <= n; i++)
//        sum[i] = sum[i-1] + m[i];
//
//      go(1,n);
//      System.out.println(t[1][n]);
//    }
//    con.close();
//  }
//}
