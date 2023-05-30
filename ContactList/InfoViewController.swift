//
//  InfoViewController.swift
//  ContactList
//
//  Created by Роман on 27.05.2023.
//

import UIKit

final class InfoViewController: UIViewController {

    @IBOutlet var telNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setInfoLabel()
    }
        
    private func setInfoLabel() {
        telNumberLabel.text = person.telNumbers
        emailLabel.text = person.emails
        title = person.fullName
    }
    
}

