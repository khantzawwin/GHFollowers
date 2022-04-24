//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Khant Zaw Win on 10/4/22.
//

import UIKit

protocol GFRepoItemDelegate: AnyObject {
    func didTapGitHubProfile(for user:User)
}

class GFRepoItemVC: GFItemInfoVC {
    
    weak var delegate: GFRepoItemDelegate!
    
    init(user: User, delegate: GFRepoItemDelegate){
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems(){
        itemInfoView1.set(ItemInfoType: .repos, withCount: user.publicRepos)
        itemInfoView2.set(ItemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(color: .systemPurple, title: "GitHub Profile", systemImageName: "person")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
}
