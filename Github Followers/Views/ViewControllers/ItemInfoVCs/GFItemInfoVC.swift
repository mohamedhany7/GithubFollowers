//
//  GFItemInfoVC.swift
//  Github Followers
//
//  Created by Mohamed Hany on 26/03/2024.
//

import UIKit

class GFItemInfoVC: UIViewController {
    
    let stackView = UIStackView()
    let itemInfoViewOne = GFItemInfoView()
    let itemInfoViewTwo = GFItemInfoView()
    let actionButton = GFButton()
    
    var user: User!
    var delegate: UserInfoVCDelegate!
    
    init(user: User!) {
        super.init(nibName: nil, bundle: nil)
        self.user = user
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackgroundView()
        configureActionButton()
        layoutUI()
        configureStackView()
    }
    
    private func configureBackgroundView(){
        view.layer.cornerRadius = 18
        view.backgroundColor = .secondarySystemBackground
    }
    
    private func configureStackView(){
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        
        stackView.addArrangedSubview(itemInfoViewOne)
        stackView.addArrangedSubview(itemInfoViewTwo)
    }
    
    private func configureActionButton(){
        actionButton.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
    }
    
    @objc func actionButtonTapped() { }
    
    private func layoutUI(){
        view.addSubview(stackView)
        view.addSubview(actionButton)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        let paddig: CGFloat = 20
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: paddig),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: paddig),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -paddig),
            stackView.heightAnchor.constraint(equalToConstant: 25),
            
            actionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -paddig),
            actionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: paddig),
            actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -paddig),
            actionButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    
}
