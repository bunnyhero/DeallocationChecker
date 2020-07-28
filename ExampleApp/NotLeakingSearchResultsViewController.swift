//
//  NotLeakingSearchResultsViewController.swift
//  ExampleApp
//
//  Created by bunnyhero on 2020-07-27.
//  Copyright © 2020 DeallocationChecker. All rights reserved.
//

import UIKit
import DeallocationChecker

class NotLeakingSearchResultsViewController: UIViewController {
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        DeallocationChecker.shared.checkDeallocation(of: self)
    }
}
