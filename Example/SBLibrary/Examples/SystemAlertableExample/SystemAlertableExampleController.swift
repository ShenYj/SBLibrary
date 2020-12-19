//
//  SystemAlertableExampleController.swift
//  SBLibrary_Example
//
//  Created by ShenYj on 2020/12/19.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import SBLibrary

internal class SystemAlertableExampleController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Alert", style: .done, target: self, action: #selector(target(forRightNavitionBarButtonItem:)))
    }
    
    @objc func target(forRightNavitionBarButtonItem buttonItem: UIBarButtonItem) {
        
        let cancelAction = UIAlertAction(title: "取消", style: .destructive) { (action) in
            
        }
        let confirmAction = UIAlertAction(title: "确定", style: .default) { (action) in
            
        }
        let alertController = prepareAlert(title: "title", message: "message", actions: [cancelAction, confirmAction])
        present(alertController, animated: true, completion: nil)
    }
}

extension SystemAlertableExampleController: ExampleController { }
