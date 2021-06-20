//
//  AllGroupsViewController.swift
//  VK_Client
//
//  Created by Богдан Кремер on 15.06.2021.
//

import UIKit

final class AllGroupsViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var groups = GroupStorage.shared.allGroups

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension AllGroupsViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        groups.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AllGroupsTableViewCell.identifire, for: indexPath) as! AllGroupsTableViewCell

        cell.configure(groups[indexPath.row])

        return cell
    }

}
