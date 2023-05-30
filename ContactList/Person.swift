//
//  Person.swift
//  ContactList
//
//  Created by Роман on 26.05.2023.
//

struct Person {
    
    let telNumbers: String
    let emails: String
    let names: String
    let surNames: String
    
    var fullName: String {"\(names) \(surNames)"}
    
   
}
extension Person {
    static func geting() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.serNames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let telNumbers = DataStore.shared.talNumbers.shuffled()
        
        let itterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            telNumbers.count
        )
        
        for index in 0..<itterationCount {
            let person = Person(
                telNumbers: telNumbers[index],
                emails: emails[index],
                names: names[index],
                surNames: surnames[index]
            )
            persons.append(person)
        }
        
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
