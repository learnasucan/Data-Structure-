import UIKit

//Big O

func BigO(){
    
    
//   O(n) = 1
    let dummyNumber = 1
    
//  O(n)
    
    for i in 0...3 {
        print(i)
    }
    
// O(n^2)
    
    for i in 0...3 {
        for j in 0...3 {
            print(i,j)
        }
    }
    
// O(n*m)
    
    for i in 0...3 {
        for j in (0...3) {
            for k in 0...3 {
                for l in 0...3 {
                    print(i,j,k,l)
                }
            }
        }
    }
    
//    O(logn)
    
    //Binary search
    
}


BigO()
