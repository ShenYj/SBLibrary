//
//  ExampleDataSourceProtocol.swift
//  SBLibrary_Example
//
//  Created by ShenYj on 2020/12/17.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

internal protocol ExampleDataSourceProtocol {
    
    associatedtype ExampleController: UIViewController
    
    /// example 数据源
    var exampleDatasources: [ExampleDataSource] { get }
    /// 获取指定`section`个数
    var sectionCount: Int { get }
    
    /// 获取指定`section`下的指定`row`
    subscript(section: Int, row: Int) -> ExampleRows<String> { get }
    /// 获取指定`section`下的指定`row`的`rowTitle`
    subscript(section: Int, row: Int) -> String { get }
    /// 获取指定`section`的`sectionTitle`
    subscript(section: Int) -> String { get }
    /// 获取指定`section`的`rows`的个数
    subscript(section: Int) -> Int { get }
    
    /// 获取指定`section`的指定`rows`获得 example 控制器
    subscript(section: Int, row: Int) -> ExampleController { get }
}

internal extension ExampleDataSourceProtocol {

    typealias ExampleDataSource = ExampleSections<String>
    typealias ExampleSections<S> = (sectionTitle: S, rows: [ExampleRows<S>])
    typealias ExampleRows<S> = (rowTitle: S, icon: S, example: Example)
    
    var exampleDatasources: [ExampleDataSource] {
        [
            ExampleSections(sectionTitle: "SBL-Foundation 基础扩展",
                            rows:
                                [
                                    ExampleRows(rowTitle: "SandboxReadable协议", icon: "", example: .sandboxable(exampleController: UIStoryboard.init(name: "SandboxReadableExample", bundle: nil).instantiateInitialViewController()! as! SandboxReadableExampleController))
                                ]
            ),
            ExampleSections(sectionTitle: "SBL-UIKit 扩展",
                            rows:
                                [
                                    
                                ]
            ),
            ExampleSections(sectionTitle: "SBL-TBD",
                            rows:
                                [
                                    
                                ]
            )
        ]
    }
    /// 获取指定`section`个数
    var sectionCount: Int { exampleDatasources.count }
    
    /// 获取指定`section`下的指定`row`
    subscript(section: Int, row: Int) -> ExampleRows<String> { exampleDatasources[section].rows[row] }
    /// 获取指定`section`下的指定`row`的`rowTitle`
    subscript(section: Int, row: Int) -> String { exampleDatasources[section].rows[row].rowTitle }
    /// 获取指定`section`的`sectionTitle`
    subscript(section: Int) -> String { exampleDatasources[section].sectionTitle }
    /// 获取指定`section`的`rows`的个数
    subscript(section: Int) -> Int { exampleDatasources[section].rows.count }
    
    /// 获取指定`section`的指定`rows`获得 example 控制器
    subscript(section: Int, row: Int) -> ExampleController {
        switch self[section, row].example {
        case let .sandboxable(exampleController):       return exampleController as! Self.ExampleController
        }
    }
}


