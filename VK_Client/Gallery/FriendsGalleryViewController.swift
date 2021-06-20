//
//  FriendsGalleryViewController.swift
//  VK_Client
//
//  Created by Богдан Кремер on 15.06.2021.
//

import UIKit

class FriendsGalleryViewController: UIViewController {
    
    var images = FriendsStorage.shared.friends
    
    @IBOutlet private weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension FriendsGalleryViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
//        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GalleryCollectionCell.identifire, for: indexPath) as!
            GalleryCollectionCell
        
        cell.configure(images[indexPath.item])
        
        return cell
    }
    
}
