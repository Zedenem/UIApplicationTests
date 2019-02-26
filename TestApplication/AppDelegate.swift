//
//  AppDelegate.swift
//  TestApplication
//
//  Created by Zedenem on 26/02/2019.
//  Copyright © 2019 Zedenem. All rights reserved.
//

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    return true
  }
}

extension UIApplication {
  var weirdHeight: CGFloat {
    guard let _ = keyWindow?.rootViewController else {
      return 0
    }
    return 40
  }
}
