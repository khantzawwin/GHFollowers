//
//  FavoriteCell.swift
//  GHFollowers
//
//  Created by Khant Zaw Win on 10/4/22.
//

import UIKit

class FavoriteCell: UITableViewCell {

    static let reuseID = "FavoriteCell"
    
    let avaterImageView = GFAvatarImageView(frame: .zero)
    let usernameLabel = GFTitleLabel(textAlignment: .left, fontSize: 26)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        addSubviews(avaterImageView, usernameLabel)
        
        accessoryType = .disclosureIndicator
        let padding:CGFloat = 12
        
        NSLayoutConstraint.activate([
            avaterImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            avaterImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            avaterImageView.heightAnchor.constraint(equalToConstant: 60),
            avaterImageView.widthAnchor.constraint(equalToConstant: 60),
            
            usernameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            usernameLabel.leadingAnchor.constraint(equalTo: avaterImageView.trailingAnchor, constant: 24),
            usernameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func set(favorite: Follower) {
        usernameLabel.text = favorite.login
        self.avaterImageView.downloadImage(fromURL: favorite.avatarUrl)
    }
    
}
