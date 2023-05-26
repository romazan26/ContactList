//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Роман on 26.05.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

   

   
    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
    }

}
// MARK: - UITablaViewDataSourse

extension ContactListViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)

       

        return cell
    }
}
