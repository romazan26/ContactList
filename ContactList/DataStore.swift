//
//  Contact.swift
//  ContactList
//
//  Created by Роман on 26.05.2023.
//

import Foundation

class DataStore {
    static let shared = DataStore()
    private init() { }
    
    let names: [String] = ["Roman", "Maria"]
    let serNames: [String] = ["Glavackii", "Klyshko"]
    let emails: [String] = ["romazan.26@gmail.com"]
    let talNumbers: [String] = ["89682674413"]
}
