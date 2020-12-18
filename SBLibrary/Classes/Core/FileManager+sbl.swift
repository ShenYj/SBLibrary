//
//  FileManager+sb.swift
//  SBLibrary
//
//  Created by ShenYj on 2020/12/17.
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

import Foundation

public extension FileManager {
    
    /// 检查某个文件夹路径是否存在
    ///
    /// - Note: 文件夹路径 (`完整路径`) 不允许为`nil`, 传入`nil`无意义
    ///
    @discardableResult
    func isDirectory(exists directoryPath: String) -> Bool { fileExists(atPath: directoryPath) }
    
    /// 准备路径
    ///
    /// - Note: 若文件夹已经存在, 则直接返回`true`, 若不存在先执行创建, 并将创建成功与否的结果返回
    ///
    @discardableResult
    func prepareDirectory(atPath directory: String) -> Bool {
        guard !self.isDirectory(exists: directory) else { return true }
        do {
            try self.createDirectory(atPath: directory, withIntermediateDirectories: true, attributes: nil)
            return true
        } catch {
            return false
        }
    }
}

extension FileManager: SandboxReadable { }
