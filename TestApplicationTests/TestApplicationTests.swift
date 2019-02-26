//
//  TestApplicationTests.swift
//  TestApplicationTests
//
//  Created by Zedenem on 26/02/2019.
//  Copyright © 2019 Zedenem. All rights reserved.
//

import XCTest
@testable import TestApplication

class TestApplicationTests: XCTestCase {
  var window: UIWindow!

  override func setUp() {
    super.setUp()
  }

  override func tearDown() {
    if window != nil && window.isKeyWindow {
      window.resignKey()
      window = nil
    }
    super.tearDown()
  }

  func testWeirdViewControllerContentInsetChanged_WhenKeyWindowRootViewControllerIsDefined() {
    let weirdViewController = WeirdViewController(parameters: [:])

    window = UIWindow(frame: UIScreen.main.bounds)
    window.rootViewController = UIViewController()
    window.makeKeyAndVisible()

    weirdViewController.viewDidLayoutSubviews()

    XCTAssertEqual(weirdViewController.contentInset, UIEdgeInsets(top: 0, left: 0, bottom: 40, right: 0))
  }

  func testWeirdViewControllerContentInsetUnchanged_WhenKeyWindowRootViewControllerIsNotDefined() {
    let weirdViewController = WeirdViewController(parameters: [:])

    weirdViewController.viewDidLayoutSubviews()

    XCTAssertEqual(weirdViewController.contentInset, .zero)
  }

}
