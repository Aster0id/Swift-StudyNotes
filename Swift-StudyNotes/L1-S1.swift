//
//  Lesson2Section2.swift
//  Swift-StudyNotes
//
//  Created by 牛萌 on 15/5/12.
//  Copyright (c) 2015年  Aster0id.Team. All rights reserved.
//

import Foundation
import UIKit

enum OptionalValue<T> {
    case None
    case Some(T)
}


/**
*  @class
*  @brief  1.1 Swift初见
*/
class Lesson1Section1 {
    
    func run(flag:Bool) {
        if !flag {
            return
        }
        println("\n\n------------------------------------")
        println(">>>>> Lesson1-Section1 begin running\n\n")
        // -----------------------------------------
        
        // MARK: 简单值
        
        // -----------------------------------------
        
        
        //-- 常数和变量
        let letNum = 5
        var varNum = 5.5
        
        // 常数不能改变, 只能赋值一次,调用多次
        // 变量可以重新赋值
        varNum = 7.6
        
        //-- NSSting
        let letStr = "这是一个常量字符串"
        var varStr : NSString
        varStr = "这是一个变量字符串"
        
        //-- 字符串拼接
        let str1 = letStr + String(letNum)
        var str2 : NSString = "测试版本 v\(varNum)"
        str2 = String(str2) + String(letNum)
        
        //-- 数组&字典
        var array1 = ["1","2","3"]
        var dict1 = [
            "key1":"value1",
            "key2":"value2"]
        
        //-- 空数组/空字典
        var array2 : NSArray = NSArray()
        var array3 = []
        var dict2 : NSDictionary = NSDictionary()
        var dict3 = [:]
        
        
        
        
        // -----------------------------------------
        
        // MARK: 控制流
        
        // -----------------------------------------
        
        
        /**
        * 控制流
        * 使用 if/switch 来进行条件操作
        * 使用 for-in/for/while/do-while 来进行循环
        *
        * 条件和循环变量括号可以省略,但是语句体的大括号是必须的。
        */
        
        //-- for-in && if
        array2 = [3,5,6,8,10,53]
        var sum1 : NSInteger = 0
        for i in array2 {
            if i.integerValue%3 != 0 && i.integerValue != letNum {
                sum1 = sum1 + i.integerValue
            }
        }
        
        //-- Switch
        //! Switch 支持任意类型的数据以及各种比较操作——不仅仅是整数
        let vegetable = "red pepper"
        var sum2 : Int = 0
        switch vegetable {
        case "celery":
            let vegetableComment = "Add some raisins and make ants on a log."
            sum2++
        case "cucumber", "watercress":
            let vegetableComment = "That would make a good tea sandwich."
            sum2++
        case let x where x.hasSuffix("pepper"):
            let vegetableComment = "Is it a spicy \(x)?"
            sum2++
        default :
            let vegetableComment = "Everything tastes good in soup."
            sum2++
        }
        println(sum2)
        //! Switch 中匹配到的子句之后, 程序会退出Switch语句, 并不会继续向下运行, 所以不需要在每个子句结尾写 break
        //## 打印: 1
        
        
        //~~ for-in 的高级用法
        let scores = [
            "小红":["数学":90,"语文":78,"英语":76],
            "小黄":["数学":89,"语文":88,"英语":83],
            "小蓝":["数学":78,"语文":80,"英语":92]]
        
        var goodStudent: NSString = ""
        var maxScore: NSInteger = 0
        for (name,score) in scores {
            var scoreSum: Int = 0
            for (object,result) in score {
                scoreSum += result
            }
            if scoreSum > maxScore {
                maxScore = scoreSum
                goodStudent = name
            }
        }
        println("总成绩最高的同学: " + String(goodStudent) + "\n总成绩为: \(maxScore)")
        /*
        //## 打印:
        总成绩最高的同学: 小黄
        总成绩为: 260
        */
        
        
        // while && do-while
        var math1 = 2
        while math1 < 100{
            math1 *= 2
        }
        
        var math2 = 2
        do {
            math2 = math2 * 2
        } while math2 < 100
        
        
        //~~ for 的高级用法
        // "..."
        var firstForLoop = 0
        for i in 0...2 { //包含2 循环3次
            firstForLoop += i
        }
        // 此方法等价于
        var secondForLoop = 0
        for var i = 0; i <= 2; i++ {
            secondForLoop += i
        }
        
        
        
        
        
        // -----------------------------------------
        
        // MARK: 函数和闭包
        
        // -----------------------------------------
        
        self.greet("小黄", day: "星期五")
        self.getScore()
        
        // 求加和
        var sum3 = self.sumOf()
        let sum4 = self.sumOf(20, 40, 12)
        
        //! 函数嵌套
        func return15() -> Int {
            var y = 10
            func add() { y += 5 }
            add ()
            return y
        }
        return15()
        
        
        //!!! 函数可以作为另一个函数的返回值
        func makeIncrementer(i:Int) -> (Int -> Int) {
            func addOne(number:Int) -> Int {
                return 1 + i
            }
            return addOne
        }
        // 返回的是一个函数,而非函数的返回值
        var increment = makeIncrementer(2)
        
        
        
        //!!! 函数也可以作为另一个函数的参数
        func lessThan10(i:Int) -> Bool {
            return i < 10
        }
        
        func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool { for item in list {
            if condition(item) {
                return true
            }
            }
            return false
        }
        
        let numbers = [45, 34, 6]
        let bool1 = hasAnyMatches(numbers, lessThan10)
        
        // ￼ map()函数实际上是一种特殊的闭包,你可以使用{}来创建一个匿名闭包。使用 in 来分割参数并返回类型。
        var number2 = numbers.map({
            (number:Int)->Int in
            var value = number * 3
            return value
        })
        
        // 重写闭包,对所有奇数返回 0
        var numbers3 = numbers.map({
            (number:Int)->Int in
            if number%2 == 0 {
                return number
            }
            return 0
        })
        
        
        
        
        
        
        // -----------------------------------------
        
        // MARK: 对象和类
        
        // -----------------------------------------
        
        var aShape : Shape = Shape(name:"SimpleShape",sideLength:45.0)
        aShape.numberOfSides = 3
        println(aShape.simpleDescription())
        //## 打印: 这个3边形的边长为:45.0
        var aSquare : Square = Square(name: "四边形", sideLength: 3.0)
        println(aSquare.simpleDescription())
        //## 打印: 这个四边形的边长为:3.0, 面积为9.0
        aSquare.area = 49
        println("边长:\(aSquare.sideLength)") //## 打印: 边长:7.0
        println("新面积:\(aSquare.area)") //## 打印: 新面积:49.0
        
        // 如果你不需要计算属性但是需要在设置一个新值之前运行一些代码,使用 willSet 和 didSet
        var shapeAndSquare : ShapeAndSquare = ShapeAndSquare(size: 4, name: "shapeAndSquare")
        
        // 处理变量的可选值时,你可以在操作(比如方法、属性和子脚本)之前加?。如果?之前的值是 nil,?后面的东西都会被忽略,并且整个表达式返回 nil。否则,?之后的东西都会被运行。在这两种情况下,整个表达式的值也是一个可选值。
        let optionalSquare1: Square? = Square(name: "optional square" ,sideLength: 2.5)
        let sideLength1 = optionalSquare1?.sideLength
        var optionalSquare2: Square?
        let sideLength2 = optionalSquare2?.sideLength
        
        
        
        
        
        
        
        
        
        // -----------------------------------------
        
        // MARK: 枚举和结构体
        
        // -----------------------------------------
        
        
        enum Rank: Int {
            case Ace = 1
            case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
            case Jack, Queen, King
            
            func simpleDescription() -> String {
                switch self {
                case .Ace:
                    return "ace"
                case .Jack:
                    return "jack"
                case .Queen:
                    return "queen"
                case .King:
                    return "king"
                default:
                    return String(self.rawValue)
                }
            }
        }
        let ace = Rank.Ace //## 结果: Ace
        let aceRawValue = ace.simpleDescription() //## 结果: (NSString)ace
        let rank1 = Rank(rawValue: 3) //## 结果: Three
        
        enum Suit : Int {
            case Spades = 1
            case Hearts, Diamonds, Clubs
            
            func simpleDescription() -> String {
                switch self {
                case .Spades:
                    return "spades"
                case .Hearts:
                    return "hearts"
                case .Diamonds:
                    return "diamonds"
                case .Clubs:
                    return "clubs"
                }
            }
            
            // 练习:给Suit添加一个color()方法,对spades和clubs返回“black”,对hearts和diamonds返回“red”。
            func color() -> UIColor {
                switch self {
                case .Spades, .Clubs:
                    return UIColor.blackColor()
                case .Hearts, .Diamonds:
                    return UIColor.redColor()
                }
            }
            
            func colorDescription() -> NSString {
                switch self {
                case .Spades, .Clubs:
                    return "Black"
                case .Hearts, .Diamonds:
                    return "Red"
                }
            }
        }
        let hearts = Suit.Hearts
        let heartsDescription = hearts.simpleDescription()
        let heartsColor = hearts.color()
        
        // 结构体
        /**
        * 使用 struct 来创建一个结构体。
        * 结构体和类有很多相同的地方,比如方法和构造器。它们之间最大的一个区别就是 结构体是传值,类是传引用。
        */
        struct Card {
            var rank: Rank!
            var suit: Suit!
            func simpleDescription() -> String {
                return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
            }
            
            var properties : NSDictionary {
                get{
                    return
                        ["rank":self.rank.simpleDescription(),
                            "suit":self.suit.simpleDescription()]
                }
            }
        }
        let threeOfSpades = Card(rank:Rank.Three, suit:Suit.Spades)
        let threeOfSpadesDescription = threeOfSpades.simpleDescription()
        
        // 练习: 创建一副扑克牌
        func poker () -> NSArray {
            var poker = NSMutableArray()
            for rank in 1...13 {
                for suit in 1...4 {
                    let card = Card(rank: Rank(rawValue: rank), suit: Suit(rawValue: suit))
                    poker.addObject(card.properties)
                }
            }
            return poker
        }
        // println(poker())
        
        
        
        
        // -----------------------------------------
        
        // MARK: 接口和扩展
        
        // -----------------------------------------
        
        var a = SimpleClass()
        a.adjust()
        let aDescription = a.simpleDescription
        
        var b = SimpleStructure()
        b.adjust()
        let bDescription = b.simpleDescription
        
        // Int的拓展
        println(7.simpleDescription)
        // 练习: 添加Double的拓展, 取绝对值
        println(Double(-7.3).absoluteValue())
        
        
        // 你可以像使用其他命名类型一样使用接口名——例如, 创建一个有不同类型但是都实现一个接口的对象集合。
        // 当你处理类型是接口的值时,接口外定义的方法不可用。
        
        // ￼即使protocolValue变量运行时的类型是simpleClass,编译器会把它的类型当做ExampleProtocol。
        // 这表示你不能调用类在它实现的接口之外实现的方法或者属性。
        let protocolValue : ExampleProtocol = a
        protocolValue.simpleDescription
        
        
        
        
        
        
        // -----------------------------------------
        
        // MARK: 泛型
        
        // -----------------------------------------
        
        /*
        func repeat<ItemType>(item: ItemType, times: Int) -> ItemType[] {
        var result = ItemType[]()
        for i in 0...times {
        result += item
        }
        return result
        }
        repeat("knock", 4)
        */
        
        
        // 可以创建泛型类、枚举和结构体。
        // Reimplement the Swift standard library's optional type
        var possibleInteger: OptionalValue<Int> = .None
        possibleInteger = .Some(100)
        
        
        
        
        println("\n\nLesson1-Section1 end running <<<<<<<")
        println("------------------------------------\n\n")
    }
    
    
    func greet(name:NSString, day:NSString) -> NSString {
        return "你好, \(name). 今天是\(day)"
    }
    
    func getScore() -> (Double, Double, Double) {
        return (43, 82, 92)
    }
    
    // 加和函数
    func sumOf(numbers:Int...) -> Int {
        var sum: Int = 0
        for i in numbers {
            sum += i
        }
        return sum
        
    }
    
}

// MARK: - 图形 for `对象和类`
class NamedShape {
    // 边框颜色
    let borderColor = UIColor.blackColor()
    var numberOfSides:Int = 0
    var name:NSString
    
    // 构造函数
    init (name:NSString) {
        self.name = name
    }
    
    // 析构函数
    deinit {
        self.name = ""
    }
    
    func getBorderColor() -> UIColor {
        return borderColor
    }
    
    func simpleDescription() -> String {
        return String("这是一个\(numberOfSides)边形")
    }
    
}

class Shape : NamedShape {
    
    var sideLength: Double
    
    init(name: NSString, sideLength: Double) {
        self.sideLength = sideLength
        super.init(name: name)
    }
    
    // 子类如果要重写父类的方法的话,需要用 override 标记——如果没有添加 override 就重写 父类方法的话编译器会报错。编译器同样会检测 override 标记的方法是否确实在父类中。
    override func simpleDescription() -> String {
        return String ("这个\(self.numberOfSides)边形的边长为:\(self.sideLength)")
    }
}

class Square : Shape {
    
    override init(name: NSString, sideLength: Double) {
        super.init(name: name, sideLength: sideLength)
        self.numberOfSides = 4
    }
    
    var area : Double {
        get {
            return self.sideLength * self.sideLength
        }
        set {
            self.sideLength = sqrt(newValue)
        }
    }
    
    override func simpleDescription() -> String {
        return String ("这个四边形的边长为:\(self.sideLength), 面积为\(self.area)")
    }
}


class ShapeAndSquare {
    var shape: Shape {
        willSet {
            self.square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            self.shape.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        self.square = Square(name: "正方形", sideLength: 3)
        self.shape = Shape(name: "图形", sideLength: 6)
    }
}
