//
//  StringConvertible.swift
//  SBLibrary
//
//  Created by ShenYj on 2020/12/18.
//

import Foundation

public protocol StringConvertible where Self: StringProtocol {
    
    /// `String` 去空格
    ///
    /// - Note: 将字符串中的`空格` 去除
    ///
    var withoutSpace: String { get }
    
    /// `String` 去换行符
    ///
    /// - Note: 将字符串中的`\n 换行符`去除
    ///
    var withoutNewLine: String { get }
    
    /// `String` 去空格、换行符
    ///
    /// - Note: 将字符串中的`空格` 、`\n 换行符`去除
    ///
    var withoutSpaceAndNewLine: String { get }
}

public extension StringConvertible {
    
    /// `String` 去空格
    ///
    /// - Note: 将字符串中的`空格` 去除
    ///
    var withoutSpace: String { replacingOccurrences(of: " ", with: "") }
    
    /// `String` 去换行符
    ///
    /// - Note: 将字符串中的`\n 换行符`去除
    ///
    var withoutNewLine: String { replacingOccurrences(of: "\n", with: "") }
    
    /// `String` 去空格、换行符
    ///
    /// - Note: 将字符串中的`空格` 、`\n 换行符`去除
    ///
    var withoutSpaceAndNewLine: String { replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "\n", with: "") }
}
