//
//  Person.swift
//  ContactList
//
//  Created by Роман on 26.05.2023.
//

struct Person {
    
    var telNumbers = ""
    var emails = ""
    var names = ""
    var serNames = ""
    
    static func geting() -> [Person] {
             [
                Person(telNumbers: DataStore.shared.talNumbers.randomElement() ?? "",
                       emails: DataStore.shared.emails.randomElement() ?? "",
                       names: DataStore.shared.names.randomElement() ?? "",
                       serNames: DataStore.shared.serNames.randomElement() ?? "" ),
                Person(telNumbers: DataStore.shared.talNumbers.randomElement() ?? "",
                       emails: DataStore.shared.emails.randomElement() ?? "",
                       names: DataStore.shared.names.randomElement() ?? "",
                       serNames: DataStore.shared.serNames.randomElement() ?? ""),
                Person(telNumbers: DataStore.shared.talNumbers.randomElement() ?? "",
                       emails: DataStore.shared.emails.randomElement() ?? "",
                       names: DataStore.shared.names.randomElement() ?? "",
                       serNames: DataStore.shared.serNames.randomElement() ?? "" ),
                Person(telNumbers: DataStore.shared.talNumbers.randomElement() ?? "",
                       emails: DataStore.shared.emails.randomElement() ?? "",
                       names: DataStore.shared.names.randomElement() ?? "",
                       serNames: DataStore.shared.serNames.randomElement() ?? ""),
                Person(telNumbers: DataStore.shared.talNumbers.randomElement() ?? "",
                       emails: DataStore.shared.emails.randomElement() ?? "",
                       names: DataStore.shared.names.randomElement() ?? "",
                       serNames: DataStore.shared.serNames.randomElement() ?? "" ),
                Person(telNumbers: DataStore.shared.talNumbers.randomElement() ?? "",
                       emails: DataStore.shared.emails.randomElement() ?? "",
                       names: DataStore.shared.names.randomElement() ?? "",
                       serNames: DataStore.shared.serNames.randomElement() ?? "")
            ]
            
        
    }
}


