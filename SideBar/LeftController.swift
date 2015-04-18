//
//  LeftController.swift
//  SideBar
//
//  Created by Allen on 15/4/18.
//  Copyright (c) 2015年 Elin. All rights reserved.
//

import UIKit

class LeftController: UIViewController {
    override func viewDidLoad() {
//        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissThisViewController)];
//        [self.view addGestureRecognizer:tapGesture];
//        var tapGesture = UITapGestureRecognizer(target: self, action: "dismissThisViewController")
//        self.view.addGestureRecognizer(tapGesture)
        
        var button = UIButton(frame: CGRectMake(100, 100, 100, 100))
        button.setTitle("测试按钮", forState: UIControlState.Normal)
        self.view.addSubview(button)
        
        var close = UIButton(frame: CGRectMake(100, 200, 100, 100))
        close.setTitle("关闭菜单", forState: UIControlState.Normal)
        close.addTarget(self, action: "dismissThisViewController", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(close)
        
    }
    
//    - (void)dismissThisViewController
//    {
//    [self.sidebarController dismissSidebarViewController];
//    }
    
    func dismissThisViewController(){
        self.sidebarController.dismissSidebarViewController()
    }
}
