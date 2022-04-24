//
//  GFFolloweItemVC.swift
//  GHFollowers
//
//  Created by Khant Zaw Win on 10/4/22.
//

import UIKit

protocol GFFollowerItemVCDelegate: AnyObject {
    func didTapGitFollowers(for user:User)
}

class GFFollowerItemVC: GFItemInfoVC {
    
    
    weak var delegate: GFFollowerItemVCDelegate!
    
    init(user : User, delegate : GFFollowerItemVCDelegate){
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
        itemInfoView1.set(ItemInfoType: .followers, withCount: user.followers)
        itemInfoView2.set(ItemInfoType: .following, withCount: user.following)
        actionButton.set(color: .systemGreen, title: "Get Followers", systemImageName: "person.3")
    }

    override func actionButtonTapped() {
        delegate.didTapGitFollowers(for : user)
    }
}
