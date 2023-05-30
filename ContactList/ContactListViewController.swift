//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Роман on 26.05.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {

    var contactList: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        
    }
   
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let index = tableView.indexPathForSelectedRow else { return }
        guard let infoVC = segue.destination as? InfoViewController else { return }
        infoVC.person = contactList[index.row]
        
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
       
        content.text = persons.fullName
        cell.contentConfiguration = content
        return cell
    }
}
