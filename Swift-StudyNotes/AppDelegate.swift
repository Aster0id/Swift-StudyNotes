//
//  AppDelegate.swift
//  Swift-StudyNotes
//
//  Created by 牛萌 on 15/5/14.
//  Copyright (c) 2015年 Aster0id.Team. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        
        
        var l1s1 = Lesson1Section1()
        l1s1.run(false)
        
        var l2s1 = Lesson2Section1()
        l2s1.run(false)
        
        var l2s2 = Lesson2Section2()
        l2s2.run(false)
        
        var l2s3 = Lesson2Section3()
        l2s3.run(false)
        
        var l2s4 = Lesson2Section4()
        l2s4.run(false)
        
        var l2s5 = Lesson2Section5()
        l2s5.run(false)
        
        var l2s6 = Lesson2Section6()
        l2s6.run(true)
        
        return true
    }

}

