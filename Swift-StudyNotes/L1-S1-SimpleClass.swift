//
//  ViewController1.swift
//  Swift-StudyNotes
//
//  Created by 牛萌 on 15/5/11.
//  Copyright (c) 2015年  Aster0id.Team. All rights reserved.
//

import Foundation
import UIKit


class SimpleClass: ExampleProtocol {
    
    var anotherProperty: Int = 69105
    
    // -----------------------------------------
    
    // MARK: 接口和扩展
    
    // -----------------------------------------
    
    var simpleDescription: String = "A very simple class."
    func adjust() {
        simpleDescription += " Now 100% adjus ted."
    }
    
}

//!!! 注意: 声明SimpleStructure时候mutating关键字用来标记一个会修改结构体的方法。
//          SimpleClass的声明不需要标记任何方法因为类中的方法经常会修改类。
struct SimpleStructure: ExampleProtocol {
    
    // -----------------------------------------
    
    // MARK: 接口和扩展
    
    // -----------------------------------------
    
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}

// 接口
protocol ExampleProtocol {
        var simpleDescription: String { get }
        mutating func adjust()
}

// Int的接口和拓展
extension Int: ExampleProtocol {
    var simpleDescription: String {
    return "The number \(self)"
    }
    mutating func adjust() {
    self += 42
    }
}

extension Double {
    func absoluteValue()->Double {
        if (self < 0){
            return -self
        }
        return self
    }
}


