//
//  TableViewController.swift
//  Course2Week3Task2
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
//    @IBOutlet weak var table: UITableView!
    
    private let identifier = "TableViewController"
    private var photos = PhotoProvider().photos()

    override func viewDidLoad() {
        self.tableView.register(UINib(
            nibName: self.identifier, bundle: nil), forCellReuseIdentifier: "ViewCell")
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.photos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ViewCell", for: indexPath) as! ViewCell
//        cell.label?.text = self.photos[indexPath.row].name
        return cell
    }
}
