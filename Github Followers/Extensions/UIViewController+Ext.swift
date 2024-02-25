//
//  UIViewController+Ext.swift
//  Github Followers
//
//  Created by Mohamed Hany on 20/02/2024.
//

import UIKit

extension UIViewController {
    
    func presentGFAlertOnMainThread(alertTitle: String, messageTitle: String, buttonTitle: String){
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(alertTitle: alertTitle, messageTitle: messageTitle, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
