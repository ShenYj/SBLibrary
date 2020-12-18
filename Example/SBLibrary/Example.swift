//
//  Example.swift
//  SBLibrary_Example
//
//  Created by ShenYj on 2020/12/17.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

internal enum Example {
    
    /// `SandboxReadable` 协议
    ///
    /// - Note: 通过遵循`SandboxReadable`协议,  提供快捷访问常用沙盒路径
    ///
    case sandboxable(exampleController: SandboxReadableExampleController)
    
    /// `ExitApplicationable` 协议
    ///
    /// - Note: 通过遵循`ExitApplicationable`协议,  提供 退出当前 App的功能
    ///
    case exitapplication(exampleController: ExitApplicationableExampleController)
    
    /// `StringConvertible` 协议
    ///
    /// - Note: 通过遵循`StringConvertible`协议,  为`String`提供额外属性来实现`空格`、`\n 换行符`的处理
    ///
    case stringconvertible(exampleController: StringConvertibleExampleController)
}
