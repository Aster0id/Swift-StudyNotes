//
//  L2-S2.swift
//  Swift-StudyNotes
//
//  Created by 牛萌 on 15/5/12.
//  Copyright (c) 2015年  Aster0id.Team. All rights reserved.
//

import Foundation


/**
*  @class
*  @brief  2.2 基本运算符
*/
class Lesson2Section2 {
    func run(flag:Bool) {
        
        if !flag {
            return
        }
        //MARK: Begin Runing
        println("\n\n------------------------------------")
        println(">>>>> Lesson2-Section2 begin running\n\n")
        
        
        // -----------------------------------------
        
        // MARK: 术语
        
        // -----------------------------------------
        
        //-- 多元组
        let (a,b) = (3,4)
        println((a,b))
        
        //-- 取余
        //!!! 不同于 C 和 Objective-C, Swift 中是可以对浮点数进行求余的.
        let c = 8%2.5 //## 结果: 0.5
        
        
        //-- 自增和自增运算
        var i = 0
        ++i // 现在 i = 1
        
        // 当 ++ 前置的时候, 先自増再返回.
        // 当 ++ 后置的时候, 先返回再自增.
        i = 3
        var l1 = (++i)+4 //## 结果: l1=8, i=4
        i = 3
        var l2 = (i++)+4 //## 结果: l2=7, i=4
        
        
        
        
        //MARK: End Runing
        println("\n\nLesson1-Section2 end running <<<<<<<")
        println("------------------------------------\n\n")
    }
}