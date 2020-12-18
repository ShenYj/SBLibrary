//
//  ExitApplicationableController.swift
//  SBLibrary_Example
//
//  Created by ShenYj on 2020/12/18.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import SBLibrary

internal class ExitApplicationableExampleController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIApplication.exitApplication()
    }
}

extension ExitApplicationableExampleController: ExampleController { }
