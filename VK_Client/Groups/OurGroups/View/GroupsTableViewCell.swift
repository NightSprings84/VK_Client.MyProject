//
//  GroupsTableViewCell.swift
//  VK_Client
//
//  Created by Богдан Кремер on 13.06.2021.
//

import UIKit

final class GroupsTableViewCell: UITableViewCell {

    static let identifire = "GroupsTableViewCell"

    @IBOutlet weak var groupsImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
      
    func configure(_ group: GroupModel) {
        groupsImageView.image = UIImage(systemName: group.image)
        nameLabel.text = group.name
    }

}
