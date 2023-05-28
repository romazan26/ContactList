//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Роман on 26.05.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {

    private var contactList = Person.geting()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        
    }
   
    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let index = tableView.indexPathForSelectedRow else { return }
        guard let infoVC = segue.destination as? InfoViewController else { return }
        infoVC.person = contactList[index.row]
        
        guard let tabBarController = segue.destination as? TabBarViewController else {
            return
        }
      tabBarController.user = contactList
//        guard let tabBarController = segue.destination as? UITabBarController else {return}
//        guard let viewControllers = tabBarController.viewControllers else {return}
//        for viewController in viewControllers {
//            if let infoVC = viewController as? infoTableViewController
//            {
//                infoVC.person = contactList[]
//            }
//        }
    }

}
// MARK: - UITablaViewDataSourse

extension ContactListViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let persons = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
       
        content.text = persons.names
        content.secondaryText = persons.serNames

        cell.contentConfiguration = content
        return cell
    }
}
