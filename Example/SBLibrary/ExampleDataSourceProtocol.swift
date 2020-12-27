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
    
    associatedtype Controller
    
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
    subscript(section: Int, row: Int) -> Controller { get }
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
                                    ExampleRows(rowTitle: "ExitApplicationable协议", icon: "", example: .exitapplication(exampleController: UIStoryboard.init(name: "ExitApplicationableExample", bundle: nil).instantiateInitialViewController()! as! ExitApplicationableExampleController)),
                                    ExampleRows(rowTitle: "StringConvertible协议", icon: "", example: .stringconvertible(exampleController: UIStoryboard.init(name: "StringConvertibleExample", bundle: nil).instantiateInitialViewController()! as! StringConvertibleExampleController)),
                                    ExampleRows(rowTitle: "SystemAlertable协议", icon: "", example: .SystemAlertable(exampleController: UIStoryboard.init(name: "SystemAlertableExample", bundle: nil).instantiateInitialViewController()! as! SystemAlertableExampleController))
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
    subscript(section: Int, row: Int) -> Controller {
        switch self[section, row].example {
        case let .sandboxable(exampleController):               return exampleController as! Self.Controller
        case let .exitapplication(exampleController):           return exampleController as! Self.Controller
        case let .stringconvertible(exampleController):         return exampleController as! Self.Controller
        case let .SystemAlertable(exampleController):           return exampleController as! Self.Controller
        }
    }
}


