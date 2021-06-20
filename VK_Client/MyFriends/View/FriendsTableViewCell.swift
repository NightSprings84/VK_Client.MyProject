//
//  FriendsTableViewCell.swift
//  VK_Client
//
//  Created by Богдан Кремер on 12.06.2021.
//

import UIKit

final class FriendsTableViewCell: UITableViewCell {
    
    static let identifire = "FriendsTableViewCell"
    
    @IBOutlet private weak var avatarImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    
    func configure(_ friend: FriendsModel) {
        avatarImageView.image = friend.avatar
        nameLabel.text = friend.name
    }
    
}
