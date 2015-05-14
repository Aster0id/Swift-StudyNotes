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
        
        
        // -----------------------------------------
        
        // MARK: 控制转移语句
        
        // -----------------------------------------
        
        
        //MARK: End Runing
        println("\n\nLesson1-Section5 end running <<<<<<<")
        println("------------------------------------\n\n")
    }
}