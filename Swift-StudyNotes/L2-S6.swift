//
//  L2-S6.swift
//  Swift-StudyNotes
//
//  Created by 牛萌 on 15/5/15.
//  Copyright (c) 2015年 Aster0id.Team. All rights reserved.
//

import Foundation

/**
*  @class
*  @brief  2.6 函数
*/
class Lesson2Section6 {
    func run(flag:Bool) {
        
        if !flag {
            return
        }
        //MARK: Begin Runing
        println("\n\n------------------------------------")
        println(">>>>> Lesson2-Section6 begin running\n\n")
        
        
        // -----------------------------------------
        
        // MARK: 定义和调用函数
        
        // -----------------------------------------
        
        func sayHello(personName: String) -> String {
            let greeting = "Hello, " + personName + "!"
            return greeting
        }
        
        
              
        
        
        
        
        // -----------------------------------------
        
        // MARK: 函数的形参和返回值
        
        // -----------------------------------------
        
        //-- 多输入形参函数
        func halfOpenRangeLength(start: Int, end: Int) -> Int {
            return end - start
        }
        println(halfOpenRangeLength(1, 10))
        //## 打印: 9
        
        
        //-- 无形参函数
        func sayHelloWorld() -> String {
            return "hello, world"
        }
        println(sayHelloWorld())
        //## 打印: hello, world
        
        
        //-- 无返回值的函数
        func sayGoodbye(personName: String) {
            println("Goodbye, \(personName)!")
        }
        sayGoodbye("Dave")
        //## 打印: Goodbye, Dave!
        
        
        //-- 多返回值函数
        func count(string: String) -> (vowels: Int, consonants: Int, others: Int) {
            var vowels = 0, consonants = 0, others = 0
            for character in string {
            switch String(character).lowercaseString {
        case "a", "e", "i", "o", "u":
            ++vowels
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
            "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            ++consonants
        default:
            ++others
            }
            }
            return (vowels, consonants, others)
        }
        
        let total = count("some arbitrary string!")
        println("\(total.vowels) vowels and \(total.consonants) consonants")
        //## 打印: 6 vowels and 13 consonants
        //! 注意:这一点上元组的成员不需要被命名,元组是从函数中返回的,因为它们的名字已经被指定为函数的返回类型的一部分
        

        
        
        
        
        
        // -----------------------------------------
        
        // MARK: 函数形参名
        
        // -----------------------------------------
        
        
        // -----------------------------------------
        
        // MARK: 函数类型
        
        // -----------------------------------------
        // -----------------------------------------
        
        // MARK: 嵌套函数
        
        // -----------------------------------------
        
        
        //MARK: End Runing
        println("\n\nLesson2-Section6 end running <<<<<<<")
        println("------------------------------------\n\n")
    }
}