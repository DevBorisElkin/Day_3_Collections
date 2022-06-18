//
//  CodeExecutionClass.swift
//  Day_3_Collections
//
//  Created by test on 18.06.2022.
//

import Foundation

// я подсматривал сюда
// https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html
public func arraysExample(){
    
    print("***-Arrays_Example-***")
    var someInts = [1,2,3,4,5,22,53,-5]
    print(someInts)
    
    print("---Separator---")
    
    for someInteger in someInts{
        print(someInteger)
    }
    
    print("---Separator---")
    
    for index in 0...someInts.count - 1{
        print("someInts[\(index)] = \(someInts[index])")
    }
    
    print("---Separator---")
    
    print(someInts)
    someInts.insert(777, at: 2)
    
    print(someInts)
    
    print(someInts[0])
    
    someInts[0] = 333
    print(someInts[0])
    
}
