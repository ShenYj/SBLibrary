//
//  GetKeyWindowable.swift
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

public protocol GetKeyWindowable where Self: UIResponder {
    
    /// 获取当前显示的 `window`
    ///
    /// - Note: 获取当前显示的 `window`
    ///
    var appKeyWindow: UIWindow? { get }
}

public extension GetKeyWindowable {
    
    /// 获取当前显示的 `window`
    ///
    /// - Note: 获取当前显示的 `window`
    ///
    var appKeyWindow: UIWindow? {
        if #available(iOS 13.0, *) {
            guard UIApplication.shared.connectedScenes.count > 0 else { return UIApplication.shared.delegate?.window ?? nil }
            if let keyWindow = UIApplication.shared.connectedScenes
                .filter({$0.activationState == .foregroundActive})
                .map({$0 as? UIWindowScene})
                .compactMap({$0})
                .first?.windows
                .filter({$0.isKeyWindow}).first  {
                return keyWindow
            }
            return UIApplication.shared.delegate?.window ?? nil
        }
        return UIApplication.shared.keyWindow
    }
}
