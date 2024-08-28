import UIKit

///Array
///
///
///
//
func arrayIntro(){
    
    //creating Array
    var array = [1,2,3,4]
    
    //Defining Array
    var array2:[Int] = []
    
    array2.append(2)
    
    //Defining Array
    var array3 = Array<Int>()
    
    array3.append(2)
    
    //Retrival of array
    
    let num = array[2]
    print(num)
    
    for item in array {
        print(item)
    }
    
    for (index, item) in array.enumerated() {
        print("index \(index) of element \(item)")
    }
    
    array.append(4)
    //Defining Array
    var array4 = [Int]()
    array4.append(2)
    
    
}


arrayIntro()
