//
//  L2-S1.swift
//  Swift-L2
//
//  Created by 牛萌 on 15/5/12.
//  Copyright (c) 2015年 NiuMeng. All rights reserved.
//

import Foundation

/**
*  @class
*  @brief  2.1 基础部分
*/
class Lesson2Section1 {
    
    func run(flag:Bool) {
        
        if !flag {
            return
        }
        //MARK: Begin Runing
        println("\n\n------------------------------------")
        println(">>>>> Lesson2-Section1 begin running\n\n")
        
        
        
        // -----------------------------------------
        
        // MARK: 基础部分
        
        // -----------------------------------------
        
        // 你可以用任何你喜欢的字符作为常量和变量名,包括 Unicode 字符
        let π = 3.1415926
        let 你好 = "hello"
        var 乘积 : Int
        乘积 = 3*4
        println(乘积) //## 打印: 12
        println ("This is a string") //## 打印: This is a string
        
        
        //-- 注释
        //!!! Swift的多行注释可以嵌套在其它的多行注释之中
        /* 这是第一个多行注释的开头
        /* 这是第二个被嵌套的多行注释 */
        这是第一个多行注释的结尾 */
        
        
        //-- 分号
        // 有一种情况下必须要用分号,即你打算在同一行内写多条独立的语句
        let cat = "????"; println(cat) //## 打印: ????
        
        
        //-- 整数
        // minValue为0,是UInt8类型的最小值
        let minValue = UInt8.min
        // maxValue 为 255,是 UInt8 类型的最大值
        let maxValue = UInt8.max
        
        
        //-- 数值型字面量
        /*
        - 一个十进制数,没有前缀
        - 一个二进制数,前缀是 0b
        - 一个八进制数,前缀是 0o
        - 一个十六进制数,前缀是 0x
        */
        //下面的所有整数字面量的十进制值都是 17:
        let decimalInteger     = 17
        let binaryInteger      = 0b10001// 二进制的 17
        let octalInteger       = 0o21// 八进制的 17
        let hexadecimalInteger = 0x11// 十六进制的 17
        
        /*
        如果一个十进制数的指数为 exp,那这个数相当于基数和$10^{exp}$的乘积:
        1.25e2  表示 $1.25×10^{2}$, 等于 125.0。
        1.25e-2 表示 $1.25×10^{-2}$,等于 0.0125。
        
        如果一个十六进制数的指数为 exp,那这个数相当于基数和$2^{exp}$的乘积:
        0xFp2  表示 $15×2^{2}$, 等于 60.0。
        0xFp-2 表示 $15×2^{-2}$,等于 3.75。
        */
        
        /*
        下面的这些浮点字面量都等于十进制的 12.1875:
        let decimalDouble     = 12.1875
        let exponentDouble    = 1.21875e1
        let hexadecimalDouble = 0xC.3p0
        */
        
        //￼ 数值类字面量可以包括额外的格式来增强可读性。
        // 整数和浮点数都可以添加额外的零并且包含下划线,并不会影响字面量
        let paddedDouble       = 000123.456
        let oneMillion         = 1_000_000
        let justOverOneMillion = 1_000_000.000_000_1
        
        //-- 类型别名
        // 当你想要给现有类型起一个更有意义的名字时,类型别名非常有用。
        // 假设你正在处理特定长度的外部资源的数据:
        typealias AudioSample = UInt16
        
        //-- 布尔型
        // 如果你在需要使用 Bool 类型的地方使用了非布尔值,Swift 的类型安全机制会报错。
        /*
        let int1 = 1
        if int1 {
        // 这里编译会出错
        }
        */
        
        
        //!!!-- 元组
        // 元组(tuples)把多个值组合成一个复合值。元组内的值可以使任意类型,并不要求是相同类型。
        
        let http404Error = (404, "Not Found")
        // http404Error 的类型是 (Int, String),值是 (404, "Not Found")
        
        // 你可以将一个元组的内容分解(decompose)成单独的常量和变量,然后你就可以正常使用它们了
        
        let (statusCode, statusMessage) = http404Error
        println("The status code is \(statusCode)")
        //## 打印: The status code is 404
        println ("The status message is \(statusMessage)")
        //## 打印: The status message is Not Found
        
        // 如果你只需要一部分元组值,分解的时候可以把要忽略的部分用下划线(_)标记:
        let (justTheStatusCode, _) = http404Error
        println ("The status code is \(justTheStatusCode)")
        //## 打印 "The status code is 404"
        
        // 你还可以通过下标来访问元组中的单个元素,下标从零开始:
        println("The status code is \(http404Error.0)")
        //## 打印 "The status code is 404"
        println("The status message is \(http404Error.1)")
        //## 打印 "The status message is Not Found"
        
        
        // 你可以在定义元组的时候给单个元素命名:
        let http200Status = (statusCode: 200 , description: "OK")
        // 给元组中的元素命名后,你可以通过名字来获取这些元素的值:
        println("The status code is \(http200Status.statusCode)")
        //## 打印 "The status code is 200"
        println("The status message is \(http200Status.description)")
        //## 打印 "The status message is OK"
        
        //!!! 注意:元组在临时组织值的时候很有用,但是并不适合创建复杂的数据结构。
        // 如果你的数据结构并不是临时使用,请使用类或者结构体而不是元组。
        // 请参考类和结构体。
        
        
        
        //-- 可选
        let possibleNumber = "123"
        let convertedNumber = possibleNumber.toInt()
        
        //当你确定可选包确实含值之后,你可以在可选的名字后面加一个感叹号(!)来获取值。
        //这个惊叹号表示“我知道这个可选有值,请使用它。”这被称为可选值的强制解析(forced unwrapping):
        if convertedNumber != nil {
            println("\(possibleNumber) has an integer value of \(convertedNumber)")
            println("\(possibleNumber) has an integer value of \(convertedNumber!)")
        }
        else {
            println("\(possibleNumber) could not be converted to an integer")
        }
        /*
        ## 打印:
        123 has an integer value of Optional(123)
        123 has an integer value of 123
        */
        
        // 可选绑定
        if let actualNumber = possibleNumber.toInt() {
            println("\(possibleNumber) has an integer value of \(actualNumber)")
        }
        else {
            println("\(possibleNumber) could not be converted to an integer")
        }
        //## 打印 123 has an integer value of 123
        /*
        这段代码可以被理解为:
        “如果 possibleNumber.toInt 返回的可选 Int 包含一个值,创建一个叫做 actualNumber 的 新常量并将可选包含的值赋给它。”
        */
        
        //-- nil
        // 注意:Swift 的 nil 和 Objective-C 中的 nil 并不一样。
        // 在 Objective-C 中,nil 是一个指向 不存在对象的指针。
        // 在 Swift 中,nil 不是指针——它是一个确定的值,用来表示值缺失。任何类型的可选都可以被设置为 nil,不只是对象类型。
        
        // 你可以给可选变量赋值为 nil 来表示它没有值:
        var serverResponseCode: Int? = 404
        // serverResponseCode 包含一个可选的 Int 值 404
        serverResponseCode = nil
        // serverResponseCode 现在不包含值
        
        
        //-- 隐式解析可选
        /*
        有时候在程序架构中,第一次被赋值之后,可以确定一个可选总会有值。
        在这种情下,每次都要判断和解析可选值是非常低效的,因为可以确定它总会有值。
        这种类型的可选被定义为隐式解析可选(implicitly unwrapped optionals)。
        把想要用作可选的类型的后面的问号(String?)改成感叹号(String! )来声明一个隐式解析可选。
        
        当可选被第一次赋值之后就可以确定之后一直有值的时候,隐式解析可选非常有用。
        隐式解析可选主要被用在 Swift 中类的构造过程中,请参考类实例之间的循环强引用。
        
        ￼￼注意: 一个变量如果可能变成 nil 的话请不要使用隐式解析可选。
        如果你需要在变量的生命周期中判断是否是 nil 的话,请使用普通可选类型。
        */
        let possibleString: String? = "An optional string."
        println(possibleString!) // 需要惊叹号来获取值
        //## 打印: An optional string.
        
        let assumedString: String! = "An implicitly unwrapped optional string."
        println(assumedString) // 不需要感叹号
        //## 打印: An implicitly unwrapped optional string.
        
        
        //-- 断言
        let age = 3
        assert(age >= 0, "A person's age cannot be less than zero")
        // 因为 age < 0,所以断言会触发
        
        /*
        何时使用断言
        当条件可能为假时使用断言,但是最终一定要保证条件为真,这样你的代码才能继续运
        行。断言的适用情景:
        - 整数的附属脚本索引被传入一个自定义附属脚本实现,但是下标索引值可能太小或者太 大。
        - 需要给函数传入一个值,但是非法的值可能导致函数不能正常执行。 - 一个可选值现在是 nil,但是后面的代码运行需要一个非 nil 值。
        请参考附属脚本和函数。
        注意:断言可能导致你的应用终止运行,所以你应当仔细设计你的代码来让非法条件不会
        出现。然而,在你的应用发布之前,有时候非法条件可能出现,这时使用断言可以快速发
        现问题。
        */
        
        //MARK: End Runing
        println("\n\nLesson2-Section1 end running <<<<<<<")
        println("------------------------------------\n\n")
   
    }
}
