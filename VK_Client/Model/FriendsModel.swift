//
//  FriendsModel.swift
//  VK_Client
//
//  Created by Богдан Кремер on 12.06.2021.
//

import UIKit

struct FriendsModel {
    
    let name: String
    let avatar: UIImage
//    let images: [GalleryModel] = [
//        GalleryModel(image: UIImage(named: "JohnTrav")!),
//        GalleryModel(image: UIImage(named: "Ryan Gosling")!),
//        GalleryModel(image: UIImage(named: "Leo DiCaprio")!),
//        GalleryModel(image: UIImage(named: "Mark Ruffalo")!),
//        GalleryModel(image: UIImage(named: "Emily Blunt")!),
//        GalleryModel(image: UIImage(named: "Emma Stone")!),
//        GalleryModel(image: UIImage(named: "Jude Low")!),
//        GalleryModel(image: UIImage(named: "Liam Nesson")!),
//        GalleryModel(image: UIImage(named: "Tom Holland")!),
//        GalleryModel(image: UIImage(named: "Nicole Kidman")!)
//    ]
    
}

struct FriendsStorage {
    
    static let shared = FriendsStorage()
    
    var friends: [FriendsModel]
    
    private init() {
        friends = [
            FriendsModel(name: "John Travolta", avatar: UIImage(named: "JohnTrav")!),
            FriendsModel(name: "Ryan Gosling", avatar: UIImage(named: "Ryan Gosling")!),
            FriendsModel(name: "Leo DiCaprio", avatar: UIImage(named: "Leo DiCaprio")!),
            FriendsModel(name: "Mark Ruffalo", avatar: UIImage(named: "Mark Ruffalo")!),
            FriendsModel(name: "Emily Blunt", avatar: UIImage(named: "Emily Blunt")!),
            FriendsModel(name: "Emma Stone", avatar: UIImage(named: "Emma Stone")!),
            FriendsModel(name: "Jude Low", avatar: UIImage(named: "Jude Low")!),
            FriendsModel(name: "Liam Nesson", avatar: UIImage(named: "Liam Nesson")!),
            FriendsModel(name: "Tom Holland", avatar: UIImage(named: "Tom Holland")!),
            FriendsModel(name: "Nicole Kidman", avatar: UIImage(named: "Nicole Kidman")!)
        ]
    }
}
