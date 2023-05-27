//
//  InfoViewController.swift
//  ContactList
//
//  Created by Роман on 27.05.2023.
//

import UIKit

final class InfoViewController: UIViewController {

    var person: Person!
    
    @IBOutlet var telNumberLabel: UILabel!
    @IBOutlet var fullName: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setInfoLabel()
    }
        
    private func setInfoLabel() {
        telNumberLabel.text = person.telNumbers
        emailLabel.text = person.emails
        fullName.text = "\(person.serNames) \(person.names)"
    }
    
}

