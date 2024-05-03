//
//  GFAvatarImageView.swift
//  Github Followers
//
//  Created by Mohamed Hany on 25/02/2024.
//

import UIKit

class GFAvatarImageView: UIImageView {
    let cache = NetworkManager.shared.cache
    let placeholderAvatar = UIImage(named: K.avatar)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholderAvatar
        translatesAutoresizingMaskIntoConstraints = false
    }
}
