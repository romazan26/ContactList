//
//  Person.swift
//  ContactList
//
//  Created by Роман on 26.05.2023.
//

struct Person {
    
    let names = DataStore.shared.names
    let serNames = DataStore.shared.serNames
    let telNumbers = DataStore.shared.talNumbers
    let emails = DataStore.shared.emails
    
    static func GetContactList() -> [Person] {
        [
            Person.init()
        ]
    }
}
