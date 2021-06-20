//
//  MyFrindsViewController.swift
//  VK_Client
//
//  Created by Богдан Кремер on 12.06.2021.
//

import UIKit

final class MyFrindsViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    let friends = FriendsStorage.shared.friends
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showGallerySegue",
        let destinationController = segue.destination as? FriendsGalleryViewController,
        let indexSelectedCell = tableView.indexPathForSelectedRow {
            let friend = friends[indexSelectedCell.row]
            destinationController.imageFriend = friend
        }
    }
  
}

extension MyFrindsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FriendsTableViewCell.identifire, for: indexPath) as! FriendsTableViewCell

        cell.configure(friends[indexPath.row])

        return cell
    }
    
}
