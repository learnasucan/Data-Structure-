import UIKit

/*
 Given an integer array of size n, find all element that appear more than n/3 times
 */


func majorityElement(input: [Int])-> [Int] {
    
    let count = input.count
    var dictionary = [Int:Int]()
    var outputArray = [Int]()
    
    guard input.count == 0 else { return [0]}
    
    for number in input {
        
        if dictionary[number] != nil {
            dictionary[number]! += 1
        } else {
            dictionary[number] = 1
        }
    }
    
    let constant = 3
    for (key,value) in dictionary {
        
        if value > count/constant {
            outputArray.append(key)
        }
    }
    
    return outputArray
    
}


print(majorityElement(input: [1,1,2,3,3,3,4,1,1]))


import XCTest

class MajorityElement2: XCTestCase {
    
    func testMajorityElement() {
        XCTAssertEqual(majorityElement(input: [1,1,2,3,3,3,4,1,1]), [1])
        XCTAssertEqual(majorityElement(input: [1,1,1,3,3,2,2,2]), [1,2])
        XCTAssertEqual(majorityElement(input: [3,2,3]), [3])
        XCTAssertEqual(majorityElement(input: []), [0])

    }
}


MajorityElement2.defaultTestSuite.run()
