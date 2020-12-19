//
//  Alertable.swift
//  SBLibrary
//
//  Created by ShenYj on 2020/12/19.
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

public protocol SystemAlertable {
    
    /// 系统原生`AlertController`
    /// - Parameters:
    ///   - title: 标题
    ///   - message: 描述
    ///   - style: 样式
    ///   - actions: 事件
    func prepareAlert(title: String?, message: String?, style: UIAlertController.Style?, actions: [UIAlertAction]?) -> UIAlertController
}

public extension SystemAlertable {
    
    /// 系统原生`AlertController`
    /// - Parameters:
    ///   - title: 标题
    ///   - message: 描述
    ///   - style: 样式
    ///   - actions: 事件
    func prepareAlert(title: String?, message: String?, style: UIAlertController.Style? = .alert, actions: [UIAlertAction]?) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style!)
        if let alertActions = actions { alertActions.forEach { alert.addAction($0) } }
        return alert
    }
}
