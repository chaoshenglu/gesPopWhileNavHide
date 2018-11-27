//
//  AppDelegate.swift
//  gesPopWhileNavHide
//
//  Created by lixiang on 2018/11/27.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame:UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController:FirstViewController())
        window?.makeKeyAndVisible()
        return true
    }



}

