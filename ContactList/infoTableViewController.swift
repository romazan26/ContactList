//
//  infoTableViewController.swift
//  ContactList
//
//  Created by Роман on 28.05.2023.
//

import UIKit

final class infoTableViewController: UITableViewController {
    
    var pr: [Person]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        pr.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "peron", for: indexPath)

        let persons = pr[indexPath.section]
        var content = cell.defaultContentConfiguration()
       
        switch indexPath.row {
        case 0:
            content.image = UIImage(systemName: Contacts.phone.rawValue)
            content.text = persons.telNumbers
        default:
            content.text = persons.emails
            content.image = UIImage(systemName: Contacts.email.rawValue)
        }
        
        cell.contentConfiguration = content
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let contentView = UIView()
        contentView.backgroundColor = .gray
        
        let tableFullname = UILabel(
            frame: CGRect(
                x: 16,
                y: 3,
                width: tableView.frame.width,
                height: 20
            )
        )
        
        tableFullname.text = pr[section].fullName
        tableFullname.font = UIFont.boldSystemFont(ofSize: 17)
        tableFullname.textColor = .white
        contentView.addSubview(tableFullname)
        
        return contentView
    }
}
