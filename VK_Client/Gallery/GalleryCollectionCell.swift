//
//  GalleryCollectionCell.swift
//  VK_Client
//
//  Created by Богдан Кремер on 15.06.2021.
//

import UIKit

final class GalleryCollectionCell: UICollectionViewCell {

    static let identifire = "GalleryCollectionCell"
    
    @IBOutlet private weak var friendsImageView: UIImageView!
    
    func configure (_ images: FriendsModel) {
        friendsImageView.image = images.avatar
    }
    
}
