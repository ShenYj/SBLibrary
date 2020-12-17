//
//  Example.swift
//  SBLibrary_Example
//
//  Created by ShenYj on 2020/12/17.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

internal enum Example {
    
    /// `SandboxReadable` 协议
    ///
    /// - Note: 通过遵循`SandboxReadable`协议,  提供快捷访问常用沙盒路径
    ///
    case sandboxable(exampleController: SandboxReadableExampleController)
}
