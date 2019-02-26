//
//  main.swift
//  TestApplication
//
//  Created by Zedenem on 26/02/2019.
//  Copyright © 2019 Zedenem. All rights reserved.
//

import UIKit

class EmptyAppDelegate: UIResponder, UIApplicationDelegate {
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    return true
  }
}

private func delegateClassName() -> String? {
  return NSClassFromString("XCTestCase") == nil ? NSStringFromClass(AppDelegate.self) : NSStringFromClass(EmptyAppDelegate.self)
}

_ = UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, delegateClassName())
