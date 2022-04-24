//
//  FollowerCell.swift
//  GHFollowers
//
//  Created by Khant Zaw Win on 24/10/21.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    static let reuseID = "FollowerCell"
    
    let avaterImageView = GFAvatarImageView(frame: .zero)
    let usernameLabel = GFTitleLabel(textAlignment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(follower: Follower) {
        usernameLabel.text = follower.login
        avaterImageView.downloadImage(fromURL: follower.avatarUrl)
    }
    
    private func configure() {
        addSubviews(avaterImageView, usernameLabel)
        
        let padding: CGFloat = 8
        
        NSLayoutConstraint.activate([
            avaterImageView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            avaterImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            avaterImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            avaterImageView.heightAnchor.constraint(equalTo: avaterImageView.widthAnchor),
            
            usernameLabel.topAnchor.constraint(equalTo: avaterImageView.bottomAnchor, constant: 12),
            usernameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            usernameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}
