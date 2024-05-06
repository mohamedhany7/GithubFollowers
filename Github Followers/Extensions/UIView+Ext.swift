//
//  UIView+Ext.swift
//  Github Followers
//
//  Created by Mohamed Hany on 06/05/2024.
//

import UIKit

extension UIView {
    
    func pinToEdges(of superview: UIView){
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor)
        ])
    }
    
    func addSubviews(_ views: UIView...){
        for view in views {
            addSubview(view)
        }
    }
}
