import UIKit

/**
 Given an array of size n , find the majority of element.The majority element is the element that appears more than [n/2] times
 
 You may assume that the array is non -empty and the majority element always exist in the array.
 
 Example 1:
 Input: [3,2,3]
 Output:3
 Input: [2,2,1,1,1,2,2]
 Output:2
 Input: [3,2,3,4]
 Output:3
 
 */

/*
func majorityElement(_ input: [Int]) -> Int {
    var majorityElement = input[0]
    var counter = 1

    // First pass to find the candidate
    for i in 1..<input.count {
        if input[i] == majorityElement {
            counter += 1
        } else {
            counter -= 1
        }

        if counter == 0 {
            majorityElement = input[i]
            counter = 1
        }
    }
    
    // Second pass to confirm the candidate
    counter = 0
    for num in input {
        if num == majorityElement {
            counter += 1
        }
    }
    
    return counter > input.count / 2 ? majorityElement : -1 // Return -1 if no majority found (should not happen per problem statement)
}

*/


func majorityElement(_ input: [Int]) -> Int {
    let count = input.count
    var dict = [Int:Int]()
    
    for k in input {
        
        if dict.keys.contains(k) {
            dict[k] = (dict[k] ?? 0) + 1
        }else {
            dict[k] = 1
        }
       
    }
    
    var majorityKey: Int? = nil
    var max = 0
    for (key,value) in dict {
        
        if value > max {
            max = value
            majorityKey = key
        }else if value == max{
            majorityKey = nil
        }
 
    }
    print(dict)

    if let key = majorityKey{
        return key
    }
    
    return 0
}

print(majorityElement([3,2,3]))
print(majorityElement([2,2,1,1,1,2,2,5,6]))
print(majorityElement([3,2,5,6]))
print(majorityElement([3]))



import XCTest

class MajorityElementTests: XCTestCase {
    
    func testMajorityElement() {
            // Existing tests
            XCTAssertEqual(majorityElement([3, 2, 3]), 3)
            XCTAssertEqual(majorityElement([2, 2, 1, 1, 1, 2, 2, 5, 6]), 2)
            XCTAssertEqual(majorityElement([3, 2, 5, 6]), 0)
            XCTAssertEqual(majorityElement([1, 1, 1, 2, 2]), 1)
            XCTAssertEqual(majorityElement([]), 0) // Test for empty array
            XCTAssertEqual(majorityElement([1]), 1) // Test for single element
            XCTAssertEqual(majorityElement([1, 2, 2, 3, 3, 3]), 3) // Test for multiple candidates
            
            // New failure cases for equal maximum counts
            XCTAssertEqual(majorityElement([1, 2, 3, 4, 5]), 0) // No majority element
            XCTAssertEqual(majorityElement([1, 1, 2, 2, 3, 3]), 0) // No majority element, equal counts
            XCTAssertEqual(majorityElement([4, 4, 4, 5, 5, 5]), 0) // No majority element, max counts tied
            XCTAssertEqual(majorityElement([10, 20, 10, 30, 20, 30]), 0) // No majority element, diverse counts
            XCTAssertEqual(majorityElement([100, 100, 100, 1, 1, 2]), 100) // Majority present with others
            XCTAssertEqual(majorityElement([1, 1, 1, 1, 2, 2, 2]), 1) // Majority with equal minority
            XCTAssertEqual(majorityElement([5, 5, 6, 6]), 0) // Two elements tie for max count
            XCTAssertEqual(majorityElement([1, 2, 2, 1]), 0) // All elements have equal counts
        }
}

// Run the tests
MajorityElementTests.defaultTestSuite.run()
