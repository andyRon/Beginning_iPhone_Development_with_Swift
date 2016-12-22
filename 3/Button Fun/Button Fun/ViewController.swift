//
//  ViewController.swift
//  Button Fun
//
//  Created by andyron on 2016/12/22.
//  Copyright © 2016年 andyron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let title = sender.title(for: .disabled)!
        let text = "\(title) 被按了"
//        label.text = text
        // 有属性的String
        let styledText = NSMutableAttributedString(string: text)
        let attributes = [
            NSFontAttributeName: UIFont.boldSystemFont(ofSize: 50),
            NSBackgroundColorAttributeName: UIColor.red
        ]
        //NSFontAttributeName,NSBackgroundColorAttributeName等都是字符串，在NSAttributedString.h被定义，在什么时候被赋值呢？
//        print(NSFontAttributeName)
        //NSRange 是一个结构体
        let nameRange = (text as NSString).range(of: title)
        // String的range返回结果是Range
//        (text as String).range(of: title)
        print(nameRange.location, nameRange.length)
        // 把styledText中满足range的字符串改成对应属性集合attributes
        styledText.setAttributes(attributes, range: nameRange)

        label.attributedText = styledText
    }


}

