//
//  L2-S5.swift
//  Swift-StudyNotes
//
//  Created by 牛萌 on 15/5/14.
//  Copyright (c) 2015年 Aster0id.Team. All rights reserved.
//

import Foundation


/**
*  @class
*  @brief  2.5 控制流
*/
class Lesson2Section5 {
    func run(flag:Bool) {
        
        if !flag {
            return
        }
        //MARK: Begin Runing
        println("\n\n------------------------------------")
        println(">>>>> Lesson2-Section5 begin running\n\n")
        
        // -----------------------------------------
        
        // MARK: for循环
        
        // -----------------------------------------
        
        /*
        for-in 用来遍历一个范围(range),队列(sequence),集合(collection),系列(progression)里 面所有的元素执行一系列语句。
        
        for 条件递增语句(for-condition-increment),用来重复执行一系列语句直到特定条件达成, 一般通过在每次循环完成后增加计数器的值来实现。
        */
        
        //-- for-in
        for index in 1...5 {
            println("\(index) times 5 is \(index * 5)")
        }
        /*
        //## 打印:
        1 times 5 is 5
        2 times 5 is 10
        3 times 5 is 15
        4 times 5 is 20
        5 times 5 is 25
        */
        
        //如果你不需要知道范围内每一项的值,你可以使用下划线(_)替代变量名来忽略对值的访问
        let base = 3
        let power = 10
        var answer = 1
        for _ in 1...power {
            answer *= base
        }
        println("\(base) to the power of \(power) is \(answer)")
        //## 打印 3 to the power of 10 is 59049
        
        let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
        for (animalName, legCount) in numberOfLegs {
            println("\(animalName)s have \(legCount) legs")
        }
        /*
        //## 打印:
        ants have 6 legs
        cats have 4 legs
        spiders have 8 legs
        */
        
        //除了数组和字典,你也可以使用 for-in 循环来遍历字符串中的字符
        for character in "Hello" {
            println(character)
        }
        /*
        //## 打印:
        H
        e
        l
        l
        o
        */
        
        
        //-- for 条件递增(for-condition-increment)
        for var index = 0; index < 3; ++index {
            println("index is \(index)")
        }
        
        /*
        //## 打印:
        index is 0
        index is 1
        index is 2
        */
        
        
        
        
        
        
        
        // -----------------------------------------
        
        // MARK: while循环
        
        // -----------------------------------------
        
        /*
        - while 循环,每次在循环开始时计算条件是否符合;
        
        - do-while 循环,每次在循环结束时计算条件是否符合。
        */
        
        //-- while
        // Game: 蛇与梯子
        
        let finalSquare = 25
        var board = [Int](count: finalSquare + 1, repeatedValue: 0)
        board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
        board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
        
        var square = 0
        var diceRoll = 0
        while square < finalSquare {
            // roll the dice
            if ++diceRoll == 7 { diceRoll = 1 }
            // move by the rolled amount
            square += diceRoll
            if square < board.count {
                // if we're still on the board, move up or down for a snake or a ladder
                square += board[square]
            }
        }
        println("Game over!")
        
        
        
        //-- do-while
        /*
        while循环的另外一种形式是 do-while,它和 while 的区别是在判断循环条件之前,先执行一次循环的代码块,然后重复循环直到条件为 false。
        */
        
        
        
        
        
        
        // -----------------------------------------
        
        // MARK: 条件语句
        
        // -----------------------------------------
        
        //-- if
        var temperatureInFahrenheit = 30
        if temperatureInFahrenheit <= 32 {
            println("It's very cold. Consider wearing a scarf.")
        }
        //## 打印: "It's very cold. Consider wearing a scarf."
        
        temperatureInFahrenheit = 40
        if temperatureInFahrenheit <= 32 {
            // println("It's very cold. Consider wearing a scarf.")
        } else {
            println("It's not that cold. Wear a t-shirt.")
        }
        //## 打印: "It's not that cold. Wear a t-shirt."
        
        
        //-- switch
        let someCharacter: Character = "e"
        switch someCharacter {
        case "a", "e", "i", "o", "u":
            println("\(someCharacter) is a vowel")
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
        "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            println("\(someCharacter) is a consonant")
        default:
            println("\(someCharacter) is not a vowel or a consonant")
        }
        //## 打印: e is a vowel
        
        
        //-- switch不存在隐式的贯穿(Fallthrough)
        //与 C 语言和 Objective-C 中的 switch 语句不同,在 Swift 中,当匹配的 case 块中的代码执行完毕后,程序会终止 switch 语句,而不会继续执行下一个 case 块。这也就是说,不需要 在 case 块中显式地使用 break 语句。这使得 switch 语句更安全、更易用,也避免了因忘记 写 break 语句而产生的错误。
        
        
        //-- 范围匹配
        //~~ 新语法
        
        // case块的模式也可以是一个值的范围。下面的例子展示了如何使用范围匹配来输出任意数字对应的自然语言格式:
        let count = 3_000_000_000_000
        let countedThings = "stars in the Milky Way"
        var naturalCount: String
        switch count {
        case 0:
            naturalCount = "no"
        case 1...3:
            naturalCount = "a few"
        case 4...9:
            naturalCount = "several"
        case 10...99:
            naturalCount = "tens of"
        case 100...999:
            naturalCount = "hundreds of"
        case 1000...999_999:
            naturalCount = "thousands of"
        default:
            naturalCount = "millions and millions of"
        }
        println("There are \(naturalCount) \(countedThings).")
        //## 打印: There are millions and millions of stars in the Milky Way.
        
        
        
        // 你可以使用元组在同一个 switch 语句中测试多个值。元组中的元素可以是值,也可以是范围。另外,使用下划线(_)来匹配所有可能的值。
        let somePoint = (1, 1)
        switch somePoint {
        case (0, 0):
            println("(0, 0) is at the origin")
        case (_, 0):
            println("(\(somePoint.0), 0) is on the x-axis")
        case (0, _):
            println("(0, \(somePoint.1)) is on the y-axis")
        case (-2...2, -2...2):
                println("(\(somePoint.0), \(somePoint.1)) is inside the box")
        default:
            println("(\(somePoint.0), \(somePoint.1)) is outside of the box")
        }
        //## 打印: (1, 1) is inside the box
        
        
        
        //-- 值绑定 (Value Bindings)
        //~~ 新语法
        // case 块的模式允许将匹配的值绑定到一个临时的常量或变量,这些常量或变量在该 case 块里就可以被引用了——这种行为被称为值绑定。
        let anotherPoint = (2, 0)
        switch anotherPoint {
        case (let x, 0):
            println("on the x-axis with an x value of \(x)")
        case (0, let y):
            println("on the y-axis with a y value of \(y)")
        case let (x, y):
            println("somewhere else at (\(x), \(y))")
        }
        //## 打印: on the x-axis with an x value of 2
        
        
        
        //-- Where
        //!!!!!
        //~~ 新语法
        // case 块的模式可以使用 where 语句来判断额外的条件。
        // 下面的例子把下图中的点(x, y)进行了分类:
        var yetAnotherPoint = (1, -1)
        switch yetAnotherPoint {
            //             case let (x, y) where x == y:
            //             println("(\(x), \(y)) is on the line x == y")
        case let (x, y) where x == -y:
            println("(\(x), \(y)) is on the line x == -y")
        case let (x, y):
                println("(\(x), \(y)) is just some arbitrary point")
        }
        //## 打印: (1, -1) is on the line x == -y
        
        
        
        
        
        
        // -----------------------------------------
        
        // MARK: 控制转移语句
        
        // -----------------------------------------
        
        /*
        控制转移语句改变你代码的执行顺序,通过它你可以实现代码的跳转。Swift 有四种控制转 移语句。
        - continue
        - break
        - fallthrough
        - return
        */
        
        
        
        //-- continue
        // continue 告诉一个循环体立刻停止本次循环迭代,重新开始下次循环迭代。就好像在说“本 次循环迭代我已经执行完了”,但是并不会离开整个循环体。
        
        let puzzleInput = "great minds think alike"
        var puzzleOutput = ""
        for character in puzzleInput {
            switch character {
        case "a", "e", "i", "o", "u", " ":
            continue
        default:
            puzzleOutput += String(character)
            }
        }
        println(puzzleOutput)
        //## 打印: grtmndsthnklk
        
        
        //-- ￼break
        // break 语句会立刻结束整个控制流的执行。当你想要更早的结束一个 switch 代码块或者一个循环体时,你都可以使用 break 语句
        
        
        //-- fallthrough
        //~~ 新语法
        /*
        Swift 语言中的 switch 不会从上一个 case 分支落入到下一个 case 分支中。
        相反,只要第一个匹配到的 case 分支完成了它需要执行的语句,整个 switch 代码块完成了它的执行。
        相比之下,C 语言要求你显示的插入 break 语句到每个 switch 分支的末尾来阻止自动落入到下一个case分支中。
        Swift语言的这种避免默认落入到下一个分支中的特性意味着它的switch功能要比 C 语言的更加清晰和可预测,可以避免无意识地执行多个 case 分支从而引发的错误。
        */
        let integerToDescribe = 5
        var description = "The number \(integerToDescribe) is"
        switch integerToDescribe {
        case 2,3,5,7,11,13,17,19:
            description += " a prime number, and also"
            fallthrough
        default:
            description += " an integer."
        }
        println(description)
        //## 打印: The number 5 is a prime number, and also an integer.
        
        //! 注意:
        // fallthrough 关键字不会检查它下一个将会落入执行的 case 中的匹配条件。
        // fallthrough 简单地使代码执行继续连接到下一个 case 中的执行代码,这和 C 语言标准中的 switch 语句特性是一样的。
        
        
        
        
        
        
        //MARK: End Runing
        println("\n\nLesson2-Section5 end running <<<<<<<")
        println("------------------------------------\n\n")
    }
}