//
//  StringConvertibleExampleController.swift
//  SBLibrary_Example
//
//  Created by ShenYj on 2020/12/18.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import SBLibrary

internal class StringConvertibleExampleController: UIViewController {
    
    @IBOutlet weak var withWhitespaaceLB: UILabel!
    @IBOutlet weak var withNewlineLB: UILabel!
    @IBOutlet weak var withWhitespaceAndNewlineLB: UILabel!
    
    @IBOutlet weak var withoutWhitespaceLB: UILabel!
    @IBOutlet weak var withoutNewlineLB: UILabel!
    @IBOutlet weak var withoutWhitespaceAndNewlineLB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        withWhitespaaceLB.text = "包含空格:注意 这里 有 空 格"
        withNewlineLB.text = "包含换行符: \n测试字符串"
        withWhitespaceAndNewlineLB.text = "包含换行符和空格: \n 测  试字符串"
        
        withoutWhitespaceLB.text = withWhitespaaceLB.text!.withoutSpace
        withoutNewlineLB.text = withNewlineLB.text!.withoutNewLine
        withoutWhitespaceAndNewlineLB.text = withWhitespaceAndNewlineLB.text!.withoutSpaceAndNewLine
    }
}

extension StringConvertibleExampleController: ExampleController { }
