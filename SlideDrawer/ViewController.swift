//
//  ViewController.swift
//  SlideDrawer
//
//  Created by 李敏 on 16/6/17.
//  Copyright © 2016年 adways. All rights reserved.
//

import UIKit
let Screen_Width = UIScreen.mainScreen().bounds.width
let Screen_Height = UIScreen.mainScreen().bounds.height

class ViewController: UIViewController {
    var isOpen:Bool = false
    var bottomView:UIView!
    var contentView:UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initBootomView()
        initContentView()
    }

    func initBootomView(){
        bottomView = UIView.init(frame: CGRectMake(0, 0, Screen_Width, Screen_Height))
        bottomView.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(bottomView)
    }
    
    func initContentView(){
        contentView = UIView.init(frame: CGRectMake(0, 0, Screen_Width, Screen_Height))
        contentView.backgroundColor = UIColor.orangeColor()
        self.view.addSubview(contentView)
        contentView.layer.shadowColor = UIColor.grayColor().CGColor
        contentView.layer.shadowOffset = CGSizeMake(-5, 5)
        contentView.layer.shadowOpacity = 0.5
        addButton()
    }
    
    func addButton(){
        let leftButton:UIButton = UIButton.init(frame: CGRectMake(12, 32, 60, 30))
        leftButton.backgroundColor = UIColor.greenColor()
        leftButton.addTarget(self, action:#selector(actionToMenu), forControlEvents: UIControlEvents.TouchUpInside)
        
        contentView.addSubview(leftButton)
    }
    
    func actionToMenu(){
        if isOpen == false {
            UIView.animateWithDuration(0.3) {
                self.contentView.center = CGPointMake(Screen_Width, Screen_Height / 2)
                self.isOpen = true
                
            }
        }else{
            UIView.animateWithDuration(0.3) {
                self.contentView.center = CGPointMake(Screen_Width / 2, Screen_Height / 2)
                self.isOpen = false
            }
        }
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

