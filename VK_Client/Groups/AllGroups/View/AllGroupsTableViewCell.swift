//
//  AllGroupsTableViewCell.swift
//  VK_Client
//
//  Created by Богдан Кремер on 15.06.2021.
//

import UIKit

final class AllGroupsTableViewCell: UITableViewCell {

    static let identifire = "AllGroupsTableViewCell"

    @IBOutlet private weak var allGroupsImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
      
    func configure(_ group: GroupModel) {
        allGroupsImageView.image = UIImage(systemName: group.image)
        nameLabel.text = group.name
    }

}
