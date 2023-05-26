//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Роман on 26.05.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {

    private var contactList = Person.GetContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 80
        print(contactList)
    }
   
    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
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
       
        content.text = persons.serNames[indexPath.row]

        cell.contentConfiguration = content
        return cell
    }
}
