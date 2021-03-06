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
    
    /// `SystemAlertable` 协议
    ///
    /// - Note: 通过遵循`SystemAlertable`协议,  系统原生`AlertController`
    ///
    case systemAlertable(exampleController: SystemAlertableExampleController)
    
    /// `ApplicationSetable`协议
    ///
    /// - Note: 通过遵循`ApplicationSetable`协议, 支持打开当前`App`系统设置页面
    ///
    case applicationSetable(exampleController: ApplicationSetableExampleController)
}
