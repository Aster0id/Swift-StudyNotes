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
        
        // MARK: 数组
        
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
        
        
        var threeDoubles = [Double](count: 3, repeatedValue:1.0)
        // -----------------------------------------
        
        // MARK: 字典
        
        // -----------------------------------------
        
        
        // -----------------------------------------
        
        // MARK: 集合的可变性
        
        // -----------------------------------------
        
        //MARK: End Runing
        println("\n\nLesson1-Section4 end running <<<<<<<")
        println("------------------------------------\n\n")
    }
}