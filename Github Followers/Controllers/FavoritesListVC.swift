//
//  FavoritesListVC.swift
//  Github Followers
//
//  Created by Mohamed Hany on 19/02/2024.
//

import UIKit

class FavoritesListVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        PresistenceManager.retrieveFavorites {[weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let favorites):
//                for follower in followers{
                    print(favorites)
//                }
            case .failure(let error):
                self.presentGFAlertOnMainThread(alertTitle: "Error", messageTitle: error.rawValue, buttonTitle: "OK")
            }
        }
    }
}
