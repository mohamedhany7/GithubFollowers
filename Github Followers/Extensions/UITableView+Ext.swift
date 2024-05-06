//
//  UITableView+Ext.swift
//  Github Followers
//
//  Created by Mohamed Hany on 06/05/2024.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread(){
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func removeExcessCells(){
        tableFooterView = UIView(frame: .zero)
    }
}
