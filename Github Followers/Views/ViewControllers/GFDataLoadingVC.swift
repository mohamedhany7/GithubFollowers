//
//  GFDataLoadingVC.swift
//  Github Followers
//
//  Created by Mohamed Hany on 04/05/2024.
//

import UIKit

class GFDataLoadingVC: UIViewController {

    fileprivate var containerView: UIView!

    func showLoadingView(){
        containerView = UIView(frame: view.bounds)
        view.addSubview(containerView)
        
        containerView.backgroundColor = .systemBackground
        containerView.alpha = 0
        UIView.animate(withDuration: 0.25) { self.containerView.alpha = 0.8 }
        
        let activityIndecator = UIActivityIndicatorView(style: .large)
        containerView.addSubview(activityIndecator)
        
        activityIndecator.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            activityIndecator.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            activityIndecator.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
        ])
        
        activityIndecator.startAnimating()
    }
    
    func dismissLoadingView(){
        DispatchQueue.main.async {
            self.containerView.removeFromSuperview()
            self.containerView = nil
        }
    }
    
    func showEmptyStateView(message: String, in view: UIView){
        let emptyStateView = GFEmptyStateView(message: message)
        emptyStateView.frame = view.bounds
        view.addSubview(emptyStateView)
    }
}
