import UIKit

var greeting = "Hello, playground"
/*
 Find the number consecutive 1's
 Input: [1,1,0,1,1,1]
 Output:3
 
 Input: [0,0,0,0,0,0]
 Output:0
 
 Input: []
 Output:0
 
 Input: [1,1,1,1,1,1]
 Output:6
 
 
 */

/*
 func consecutive1(input: [Int]) -> Int{
    var counter = 0;
    var final = 0;
    if input.isEmpty {
        return 0
    } else {
        for i in stride(from: 0, to: input.count, by: 1) {
            if input[i] != 0 {
                counter += 1;
            } else {
                final = counter;
                counter = 0
            }
        }
        if counter > final {
            return counter
        } else {
            return final
        }
    }
    
}
*/

func max(first: Int, second: Int)-> Int{
    if first > second {
        return first
    }else{
        return second
    }
}

func consecutive1(input: [Int]) -> Int{
    var localCounter = 0;
    var globalCounter = 0;
    if input.isEmpty {
        return 0
    } else {
        for i in stride(from: 0, to: input.count, by: 1) {
            if input[i] == 1 {
                localCounter += 1;
                globalCounter = max(first: localCounter, second: globalCounter)
            } else {
                localCounter = 0
            }
        }
       
    }
    return globalCounter
    
}

print(consecutive1(input: [1,1,0,1,1,1]))


print(consecutive1(input: [0,0,0,0,0,0]))


print(consecutive1(input: []))


print(consecutive1(input: [1,1,1,1,1,1]))
