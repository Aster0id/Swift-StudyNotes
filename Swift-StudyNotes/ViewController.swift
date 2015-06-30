//
//  ViewController.swift
//  Swift-StudyNotes
//
//  Created by 牛萌 on 15/5/14.
//  Copyright (c) 2015年 Aster0id.Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.backgroundColor = UIColor.blueColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

