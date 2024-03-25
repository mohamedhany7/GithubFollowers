//
//  UserInfoVC.swift
//  Github Followers
//
//  Created by Mohamed Hany on 25/03/2024.
//

import UIKit

class UserInfoVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        NetworkManager.shared.getUserInfo(for: username) { [weak self] result in
            guard let self = self else { return }
            
            switch result{
            case .success(let user):
                print(user)
                
            case .failure(let error):
                self.presentGFAlertOnMainThread(alertTitle: "Something went wrong.", messageTitle: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
    
    private func configureViewController(){
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
    }
    
    @objc private func dismissVC() {
        dismiss(animated: true)
    }
}
