//
//  ViewController.swift
//  SideBar
//
//  Created by Allen on 15/4/18.
//  Copyright (c) 2015年 Elin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var identifier = "tableviewcell"
    var tableView:UITableView?
    var leftButton:UIBarButtonItem?
    var rightButton:UIBarButtonItem?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView = UITableView(frame: UIScreen.mainScreen().bounds, style: UITableViewStyle.Grouped)
        self.tableView?.dataSource = self
        self.tableView?.delegate = self
        
        self.view.addSubview(tableView!)
        
        leftButton = UIBarButtonItem(title: "左侧边栏", style: UIBarButtonItemStyle.Plain, target: self, action: "leftButtonClicked")
        self.navigationItem.leftBarButtonItem = leftButton
        
        rightButton = UIBarButtonItem(title: "右侧边栏", style: UIBarButtonItemStyle.Plain, target: self, action: "rightButtonClicked")
        self.navigationItem.rightBarButtonItem = rightButton

        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = (self.tableView!.dequeueReusableCellWithIdentifier(identifier) ?? UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: identifier)) as! UITableViewCell
        cell.textLabel?.text = String(indexPath.row)
        
        return cell
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50
    }

    //左导航栏按钮触发事件
    func leftButtonClicked(){
        if self.sidebarController.sidebarIsPresenting {
            self.sidebarController.dismissSidebarViewController()
        }else {
            var style = SidebarTransitionStyle.Airbnb
            self.sidebarController.presentLeftSidebarViewControllerWithStyle(style)
        }
        
    }
    //右导航栏按钮触发事件
    func rightButtonClicked(){
        if self.sidebarController.sidebarIsPresenting {
            self.sidebarController.dismissSidebarViewController()
        }else {
            var style = SidebarTransitionStyle.Luvocracy
            self.sidebarController.presentRightSidebarViewControllerWithStyle(style)
        }
        
    }
    
    
    
}

