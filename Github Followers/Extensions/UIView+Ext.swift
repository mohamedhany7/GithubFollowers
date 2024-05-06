//
//  UIView+Ext.swift
//  Github Followers
//
//  Created by Mohamed Hany on 06/05/2024.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...){
        for view in views {
            addSubview(view)
        }
    }
}
