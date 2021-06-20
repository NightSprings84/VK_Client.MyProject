//
//  GroupModel.swift
//  VK_Client
//
//  Created by Богдан Кремер on 12.06.2021.
//

import UIKit

struct GroupModel {
    
    let name: String
    let image: String
    
}

struct GroupStorage {
    
    static let shared = GroupStorage()
    
    var groups: [GroupModel]
    var allGroups: [GroupModel]
    
    private init() {
        groups = [
            GroupModel(name: "Auto", image: "heart"),
            GroupModel(name: "English", image: "heart"),
            GroupModel(name: "Coding", image: "heart"),
            GroupModel(name: "Swift Code", image: "heart"),
            GroupModel(name: "Footbal", image: "heart"),
            GroupModel(name: "Photo", image: "heart")
        ]
        
        allGroups = [
            GroupModel(name: "Art Image", image: "heart"),
            GroupModel(name: "Design", image: "heart"),
            GroupModel(name: "Cars", image: "heart"),
            GroupModel(name: "Music", image: "heart"),
            GroupModel(name: "Entertaiment", image: "heart"),
            GroupModel(name: "Collecting", image: "heart"),
            GroupModel(name: "Drowning", image: "heart"),
            GroupModel(name: "Party", image: "heart"),
            GroupModel(name: "Kinopoisk", image: "heart"),
            GroupModel(name: "Netflix", image: "heart"),
            GroupModel(name: "Podcasts", image: "heart")
        ]
    }
}
