//
//  WeirdViewController.swift
//  TestApplication
//
//  Created by Zedenem on 26/02/2019.
//  Copyright © 2019 Zedenem. All rights reserved.
//

import UIKit

class WeirdViewController: UIViewController {
  var parameters: [String: Any]?

  var contentInset: UIEdgeInsets = .zero

  init(parameters: [String: Any]) {
    super.init(nibName: nil, bundle: nil)
    self.parameters = parameters
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    contentInset = UIEdgeInsets(top: 0,
                                left: 0,
                                bottom: 0 + UIApplication.shared.weirdHeight,
                                right: 0)
  }
}
