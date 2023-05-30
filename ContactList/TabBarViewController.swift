//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Роман on 28.05.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    private func setupViewController() {
        
        var user = Person.geting()
        
        guard let contactVC = viewControllers?.first as? ContactListViewController else {return}
        guard let infoVC = viewControllers?.last as? infoTableViewController else {return}
        
        contactVC.contactList = user
        infoVC.pr = user
    }
}
