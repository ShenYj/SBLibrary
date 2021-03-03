//
//  ApplicationSetableExampleController.swift
//  SBLibrary_Example
//
//  Created by EZen on 2021/3/3.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import SBLibrary

internal class ApplicationSetableExampleController: UIViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        // ApplicationSetable 方法
        openAppSettingPage()
    }
}

extension ApplicationSetableExampleController: ExampleController { }
extension ApplicationSetableExampleController: ApplicationSetable { }
