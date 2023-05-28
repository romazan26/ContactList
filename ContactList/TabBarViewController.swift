//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Роман on 28.05.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    var user: [Person]!
    
    private func transferData() {
            guard let viewControllers else { return }
        
            viewControllers.forEach {
                if let infoTableVC = $0 as? infoTableViewController {
                  infoTableVC.pr = user
                }
            }
        }
}
