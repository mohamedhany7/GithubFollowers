//
//  User.swift
//  Github Followers
//
//  Created by Mohamed Hany on 23/02/2024.
//

import Foundation

struct User: Codable{
    
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createdAt: String
}
