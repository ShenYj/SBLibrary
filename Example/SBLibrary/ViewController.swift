//
//  ViewController.swift
//  SBLibrary
//
//  Created by ShenYj on 12/17/2020.
//  Copyright (c) 2020 ShenYj. All rights reserved.
//

import UIKit
import SBLibrary

fileprivate let ExampleTableViewCellIdentifier = "ExampleTableViewCellIdentifier"

class ViewController: UIViewController, ExampleDataSourceProtocol {
    
    typealias Controller = ExampleController
    
    @IBOutlet weak var exampleTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        exampleTableView.register(UITableViewCell.self, forCellReuseIdentifier: ExampleTableViewCellIdentifier)
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    // MARK: UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int { sectionCount }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { self[section] }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ExampleTableViewCellIdentifier, for: indexPath)
        cell.textLabel?.text = self[indexPath.section, indexPath.row]
        return cell
    }
    
    // MARK: UITableViewDelegate
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? { self[section] }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(self[indexPath.section, indexPath.row], animated: true)
    }
}
