//
//  SandboxReadableExampleController.swift
//  SBLibrary_Example
//
//  Created by ShenYj on 2020/12/17.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

fileprivate let SandboxReadableExampleCellIdentifier = "SandboxReadableExampleCellIdentifier"

internal class SandboxReadableExampleController: UITableViewController, SandboxReadableExampleProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: SandboxReadableExampleCellIdentifier)
    }
}

/// UITableViewDataSource, UITableViewDelegate
extension SandboxReadableExampleController {
    
    override func numberOfSections(in tableView: UITableView) -> Int { 1 }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { self[section] }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SandboxReadableExampleCellIdentifier, for: indexPath)
        cell.textLabel?.lineBreakMode = .byTruncatingMiddle
        cell.textLabel?.text = self[indexPath.row]
        return cell
    }
}

extension SandboxReadableExampleController: ExampleController { }
