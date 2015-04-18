//
//  AppDelegate.swift
//  SideBar
//
//  Created by Allen on 15/4/18.
//  Copyright (c) 2015年 Elin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate,TheSidebarControllerDelegate{

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
 
        //创建主窗口的视图
        var viewController = ViewController()
        //创建主窗口视图的navigationController
        var navigation = UINavigationController(rootViewController: viewController)
        navigation.view.backgroundColor = UIColor.whiteColor()
        navigation.view.layer.shadowColor = UIColor.blackColor().CGColor
        navigation.view.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        navigation.view.layer.shadowOpacity = 0.6
        navigation.view.layer.shadowRadius = 20.0
        
  
        
        //创建左菜单栏的视图
        var left = LeftController()
        left.view.backgroundColor = UIColor.blueColor()
        //创建右菜单栏的视图
        var right = RightController()
        right.view.backgroundColor = UIColor.purpleColor()

        //创建菜单控制器，传入主窗口navigationController，左菜单和右菜单
        var sidebarController = TheSidebarController(contentViewController: navigation, leftSidebarViewController: left, rightSidebarViewController: right)
        //设置代理
        sidebarController.delegate = self
        sidebarController.view.backgroundColor = UIColor.blackColor()

        //设置程序入口，为菜单控制器
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window?.backgroundColor = UIColor.whiteColor()
        self.window?.rootViewController = sidebarController
        self.window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

