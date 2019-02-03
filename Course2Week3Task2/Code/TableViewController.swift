//
//  TableViewController.swift
//  Course2Week3Task2
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    @IBOutlet var table: UITableView!
    private let identifier = String(describing: TableViewController.self)
    private var photos = PhotoProvider().photos()
    
    override func viewDidLoad() {
        self.table.register(UINib(
            nibName: self.identifier, bundle: nil), forCellReuseIdentifier: self.identifier)
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:CellData = tableView.dequeueReusableCell(withIdentifier: "CellData") as! CellData
        cell.textLabel?.text = self.data[indexPath.row]
        return cell
    }
}
