//
//  ExitApplicationable.swift
//  SBLibrary
//
//  Created by ShenYj on 2020/12/18.
//
//  Copyright (c) 2020 ShenYj <shenyanjie123@foxmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import UIKit

public protocol ExitApplicationable {
    
    /// 退出当前App
    ///
    /// - Note: 通过`ExitApplicationable`协议为`UIApplication`实现退出App功能
    ///         考虑到这并非是一个常见的需求, 所以默认只为`UIApplication`这个类提供了默认支持
    ///         当然只要你想, 也可以让任意目标遵循该协议, 从而获得这个功能
    ///
    static func exitApplication(withDuration duration: Double) -> Void
}

public extension ExitApplicationable {
    
    /// 退出当前App
    ///
    /// - Note: 退出当前App, 默认持续时长 `0.5 秒`
    ///
    static func exitApplication(withDuration duration: Double = 0.5) {
        UIView.animate(withDuration: duration) {
            UIApplication.shared.appKeyWindow?.alpha = 0.0
        } completion: { (finished) in
            exit(0)
        }
    }
}
