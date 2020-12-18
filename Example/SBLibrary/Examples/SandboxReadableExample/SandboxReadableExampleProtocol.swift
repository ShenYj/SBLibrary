//
//  SandboxReadableExampleProtocol.swift
//  SBLibrary_Example
//
//  Created by ShenYj on 2020/12/17.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import SBLibrary

internal protocol SandboxReadableExampleProtocol: SandboxReadable {
    
    /// example 数据源
    var exampleDatasources: [String] { get }
    /// 获取`section`格式
    subscript(section: Int) -> Int { get }
    /// 获取`row`下的沙盒路径
    subscript(row: Int) -> String { get }
}

extension SandboxReadableExampleProtocol {
    var exampleDatasources: [String] {
        [
            (documentDirectory ?? "-"),
            (libraryDirectory ?? "-"),
            (libraryPreferencesDirectory ?? "-"),
            (libraryCachesDirectory ?? "-"),
            (tmpDirectory ?? "-"),
        ]
    }
    /// 获取`section`格式
    subscript(section: Int) -> Int { exampleDatasources.count }
    /// 获取`row`下的沙盒路径
    subscript(row: Int) -> String { exampleDatasources[row] }
}
