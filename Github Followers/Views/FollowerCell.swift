//
//  FollowerCell.swift
//  Github Followers
//
//  Created by Mohamed Hany on 25/02/2024.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    static let reuseID = K.FollowerCellReuseID
    
    let avatarImageView = UIImageView()
    let usernameLabel = GFTitleLabel(textAllignment: .center, fontSize: 16)
}
