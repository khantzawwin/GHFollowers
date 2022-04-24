//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Khant Zaw Win on 19/4/22.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
}
