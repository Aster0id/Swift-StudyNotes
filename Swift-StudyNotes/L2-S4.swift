//
//  L2-S4.swift
//  Swift-StudyNotes
//
//  Created by 牛萌 on 15/5/13.
//  Copyright (c) 2015年  Aster0id.Team. All rights reserved.
//

import Foundation

/**
*  @class
*  @brief  2.4 集合类型
*/
class Lesson2Section4 {
    func run(flag:Bool) {
        
        if !flag {
            return
        }
        //MARK: Begin Runing
        println("\n\n------------------------------------")
        println(">>>>> Lesson2-Section4 begin running\n\n")
        
        
        //!!!!! Swift 语言里的数组和字典中存储的数据值类型必须明确。
        
        
        
        // -----------------------------------------
        
        // MARK: 数组 (Array)
        
        // -----------------------------------------
        
        /*
        Swift 数组对存储数据有具体要求。
        不同于 Objective-C 的 NSArray 和 NSMutableArray 类,他们可以存储任何类型的实例而且不提供他们返回对象的任何本质信息。
        在 Swift 中, 数据值在被存储进入某个数组之前类型必须明确,方法是通过显式的类型标注或类型推断, 而且不是必须是 class 类型。
        例如: 如果我们创建了一个 Int 值类型的数组,我们不能往其￼中插入任何不是 Int 类型的数据。
        Swift 中的数组是类型安全的,并且它们中包含的类型必须明确。
        */
        
        // 写 Swift 数组应该遵循像 Array<SomeType>这样的形式,其中 sometype 是这个数组中唯一允许存在的数据类型。
        var array1: Array<String>
        var shoppingList: [String] = ["Eggs", "Milk"]
        var shoppingList1:[Dictionary<String,Int>] = [["Eggs":34]]
        
        
        //-- 空数组判断
        // 使用布尔项 isEmpty 来作为检查 count 属性的值是否为 0 的捷径。
        if !shoppingList.isEmpty {
            println("The shopping list is not empty.")
        } else {
            println("The shopping list is empty.")
        }
        //## 打印: The shopping list is not empty. (shoppinglist 不是空的)
        
        
        //-- 数组添加元素
        // 可以使用 append 方法在数组后面添加新的数据项:
        shoppingList.append("Flour")
        // 除此之外,使用加法赋值运算符(+=)也可以直接在数组后面添加数据项:
        shoppingList += ["Baking Powder"]
        // 我们也可以使用加法赋值运算符(+=)直接添加拥有相同类型数据的数组。
        shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
        //## 结果: shoppingList中有7个元素
        // ["Eggs", "Milk", "Flour", "Baking Powder", "Chocolate Spread", "Cheese", "Butter"]
        
        
        //-- 数组修改元素
        shoppingList[0] = "Six eggs"
        
        shoppingList[3...6] = ["Bananas", "Apples"]
        //## 结果: shoppingList中有5个元素
        // ["Six eggs", "Milk", "Flour", "Bananas", "Apples"]
        
        
        //-- 数组插入元素
        shoppingList.insert("Maple Syrup", atIndex: 0)
        //## 结果: shoppingList中有6个元素
        // ["Maple Syrup", "Six eggs", "Milk", "Flour", "Bananas", "Apples"]
        
        
        //-- 数组移除元素
        shoppingList.removeAtIndex(3)
        //~~ 移除元素的高级用法
        let apples = shoppingList.removeLast()
        // 数组的最后一项被移除了
        // shoppingList现在只有4项, ["Maple Syrup", "Six eggs", "Milk", "Bananas"]
        // apples 常量的值现在等于"Apples" 字符串
        
        
        
        //-- 数组的遍历
        for item in shoppingList {
            println(item)
        }
        /*
        //## 打印:
        Maple Syrup
        Six eggs
        Milk
        Bananas
        */
        
        /*
        //~~ 高级用法:
        如果我们同时需要每个数据项的值和索引值,可以使用全局 enumerate 函数来进行数组遍 历。
        enumerate 返回一个由每一个数据项索引值和数据值组成的键值对组。
        我们可以把这个键值对组分解成临时常量或者变量来进行遍历
        */
        for (index, value) in enumerate(shoppingList) {
            println("Item \(index + 1): \(value)")
        }
        /*
        //## 打印:
        Item 1: Maple Syrup
        Item 2: Six eggs
        Item 3: Milk
        Item 4: Bananas
        */
        
        
        //~~ 新语法:
        //-- 数组的构造方法
        // Swift 中的 Array 类型还提供一个可以创建特定大小并且所有数据都被默认的构造方法。
        // 我们可以把准备加入新数组的数据项数量(count)和适当类型的初始值(repeatedValue)传 入数组构造函数:
        var threeDoubles = [Double](count: 3, repeatedValue:1.0)
        //## 结果: threeDoubles 是一种[Double]数组, 等于 [1.0, 1.0, 1.0]
        
        var anotherThreeDoubles = Array(count: 3, repeatedValue: 2.5)
        //## 结果: anotherThreeDoubles 是一种[Double]数组, 等于 [2.5, 2.5, 2.5]
        
        var sixDoubles = threeDoubles + anotherThreeDoubles
        //## 打印: sixDoubles 被推断为[Double]数组, 等于[1.0, 1.0, 1.0, 2.5, 2.5, 2.5]
        
        
        
        
        
        
        
        
        // -----------------------------------------
        
        // MARK: 字典 (Dictionary)
        
        // -----------------------------------------
        
        
        // Swift 的字典使用 Dictionary<KeyType, ValueType>定义,其中KeyType是字典中键的数据类型, ValueType是字典中对应于这些键所存储值的数据类型。
        var airports: Dictionary<String, String> = [
            "TYO": "Tokyo",
            "DUB": "Dublin"]
        
        
        
        //-- 字典更新键值对
        //updateValue(forKey:)函数会返回包含一个字典值类型的可选值。举例来说:对于存储 String 值的字典,这个函数会返回一个 String?或者“可选 String”类型的值。如果值存在,则这个可选值值等于被替换的值,否则将会是 nil。
        
        if let oldValue = airports.updateValue("Dublin Internation", forKey: "DUB") {
            println("The old value for DUB was \(oldValue).")
        }
        //## 打印: "The old value for DUB was Dublin."(dub 原值是 dublin)
        
        
        
        //-- 字典删除键值对
        if let removedValue = airports.removeValueForKey("DUB") {
            println("The removed airport's name is \(removedValue).")
        } else {
            println("The airports dictionary does not contain a value for DUB.")
        }
        // 打印 "The removed airport's name is Dublin International."(被移除的 机场名字是都柏林国际)
        
        
        
        //-- 字典的遍历
        for (airportCode, airportName) in airports {
            println("\(airportCode): \(airportName)")
        }
        //## 打印: "TYO: Tokyo"
        
        
        
        //-- 字典的构造方法
        var namesOfIntegers = Dictionary<Int, String>()
        namesOfIntegers[16] = "sixteen"
        // namesOfIntegers 现在包含一个键值对
        namesOfIntegers = [:]
        // namesOfIntegers 又成为了一个 Int, String类型的空字典
        
        
        
        
        
        // -----------------------------------------
        
        // MARK: 集合的可变性
        
        // -----------------------------------------
        
        /*
        数组和字典都是在单个集合中存储可变值。如果我们创建一个数组或者字典并且把它分配成一个变量,这个集合将会是可变的。这意味着我们可以在创建之后添加更多或移除已存在的 数据项来改变这个集合的大小。与此相反,如果我们把数组或字典分配成常量,那么他就是 不可变的,它的大小不能被改变。
        
        对字典来说,不可变性也意味着我们不能替换其中任何现有键所对应的值。不可变字典的内 容在被首次设定之后不能更改。 不可变行对数组来说有一点不同,当然我们不能试着改变 任何不可变数组的大小,但是我们可以重新设定相对现存索引所对应的值。这使得 Swift 数组在大小被固定的时候依然可以做的很棒。
        
        Swift 数组的可变性行为同时影响了数组实例如何被分配和修改,想获取更多信息,请参见 Assignment and Copy Behavior for Collection Types。
        
        注意: 在我们不需要改变数组大小的时候创建不可变数组是很好的习惯。如此 Swift 编译 器可以优化我们创建的集合。
        */
        
        
        
        //MARK: End Runing
        println("\n\nLesson1-Section4 end running <<<<<<<")
        println("------------------------------------\n\n")
    }
}