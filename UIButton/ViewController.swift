//
//  ViewController.swift
//  UIButton
//
//  Created by Deki on 15/10/23.
//  Copyright © 2015年 Deki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 创建按钮
        let button : UIButton = UIButton(type: UIButtonType.System) as UIButton
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        button.setTitle("有种 你爱我", forState: UIControlState.Normal)
        button.setTitle("你呀的，真来啊", forState: UIControlState.Highlighted)
        
        button.addTarget(self, action: "onPress:", forControlEvents: UIControlEvents.TouchDown)
        button.addTarget(self, action: "onTapped:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(button)
        
        // 创建图形按钮
        let button1: UIButton = UIButton(type:.Custom )
        
        button1.frame = CGRect(x: 40, y: 250, width: 120, height: 120)
        
        button1.setBackgroundImage(UIImage(named: "b1"), forState: UIControlState.Normal)
        button1.setBackgroundImage(UIImage(named: "b2"), forState: UIControlState.Highlighted)
        
        button1.addTarget(self, action: "bgPress:", forControlEvents: UIControlEvents.TouchDown)
        button1.addTarget(self, action: "bgTaped:", forControlEvents: UIControlEvents.TouchUpInside)
        
        view.addSubview(button1)
        
        
    }
    func bgPress(sender:UIButton) {
        print("bg 按下")
    }
    
    func onPress(btn: UIButton) {
        print("按下了")
    }
    func bgTaped(sender:UIButton) {
        print("bg 抬起bgTaped")
    }
    func onTapped(btn: UIButton) {
        print("完成了点击动作")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

