//
//  AppDelegate.swift
//  OrientationDemo
//
//  Created by mac on 2019/10/26.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var isRight = false //是否横屏

    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        if isRight {
            return [.landscapeRight,.landscapeLeft,.portrait]
        }
        return .portrait
    }
}
