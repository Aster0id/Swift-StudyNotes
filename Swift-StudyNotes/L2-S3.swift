//
//  L2-S3.swift
//  Swift-StudyNotes
//
//  Created by 牛萌 on 15/5/13.
//  Copyright (c) 2015年  Aster0id.Team. All rights reserved.
//

import Foundation


/**
*  @class
*  @brief  2.3 字符串和字符
*/
class Lesson2Section3 {
    func run(flag:Bool) {
        
        if !flag {
            return
        }
        //MARK: Begin Runing
        println("\n\n------------------------------------")
        println(">>>>> Lesson2-Section3 begin running\n\n")
        
        
        // -----------------------------------------
        
        // MARK: 字符串
        
        // -----------------------------------------
        
        var emptyString        = ""// empty string literal
        var anotherEmptyString = String()// initializer syntax
        // 这两个字符串都为空,并且两者等价
        
        // 用isEmpty判断是否字符串为空
        if emptyString.isEmpty {
            println("Nothing to see here")
        }
        
        /*
        //!!!!!
        注意: 在 Objective-C 和 Cocoa 中,您通过选择两个不同的类( NSString 和 NSMutableString )来指定该字符串是否可以被修改,Swift 中的字符串是否可以修改仅通 过定义的是变量还是常量来决定,实现了多种类型可变性操作的统一。
        */
        var variableString = "Horse"
        variableString += " and carriage"
        // variableString 现在为 "Horse and carriage"
        let constantString = "Highlander"
        //error: constantString += " and another Highlander"
        // 这会报告一个编译错误(compile-time error) - 常量不可以被修改。
        
        
        //-- 计算字符数量
        let unusualMenagerie = "Koala ????, Snail ????, Penguin ????,Dromedary ????"
        println("unusualMenagerie has \(count(unusualMenagerie)) characters")
        //## 打印: unusualMenagerie has 51 characters
        println("unusualMenagerie length is \(unusualMenagerie.lengthOfBytesUsingEncoding(NSASCIIStringEncoding))")
        //## 打印: unusualMenagerie length is 51
        
        
        let string1 = "hello"
        let character1: Character = "!"
        let stringPlusCharacter = string1 + String(character1)
        
        
        
        //-- 字符串插值
        // 字符串插值是一种全新的构建字符串的方式,可以在其中包含常量、变量、字面量和表达式。
        // 您插入的字符串字面量的每一项都被包裹在以反斜线为前缀的圆括号中:
        let multiplier = 3
        let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)" //## 结果: message is "3 times 2.5 is 7.5"
        
        
        //-- 字符串比较
        // 通过调用字符串的 hasPrefix/hasSuffix 方法来检查字符串是否拥有特定前缀/后缀
        
        
        //-- 字符串的大写和小写
        let normal = "Could you help me, please?"
        let shouty = normal.uppercaseString
        // shouty 值为 "COULD YOU HELP ME, PLEASE?"
        let whispered = normal.lowercaseString
        // whispered 值为 "could you help me, please?"
        
        
        
        
        
        //-----------------------------------
        
        
        //-- Unicode
        let dogString = "Dog!🐶"
        //-- UTF8
        for codeUnit in dogString.utf8 {
            print("\(codeUnit) ")
        }
        print("\n")
        //## 打印: 68 111 103 33 240 159 144 182
        
        //-- UTF16
        for codeUnit in dogString.utf16 {
            print("\(codeUnit) ")
        }
        print("\n")
        //## 打印: 68 111 103 33 55357 56374
        
        //-- Unicode标量 (Unicode Scalars)
        for scalar in dogString.unicodeScalars {
            print("\(scalar.value) ")
        }
        print("\n")
        //## 打印: 68 111 103 33 128054
        
        for scalar in dogString.unicodeScalars {
            print("\(scalar) ")
        }
        print("\n")
        //## 打印: D o g ! 🐶
        
        
        
        //MARK: End Runing
        println("\n\nLesson2-Section3 end running <<<<<<<")
        println("------------------------------------\n\n")
    }
}