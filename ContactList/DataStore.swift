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
    
    let names: [String] = ["Roman", "Ryslan", "Anatolii", "Igor", "Fedor", "Alexsandr"]
    let serNames: [String] = ["Glavackii", "Klyshko", "Petrov", "Ivanov", "Sidorov", "Kyzmin"]
    let emails: [String] = [
        "romazan.26@gmail.com",
        "pipito12@mail.ru",
        "dering23@mail.ru",
        "nadesa@Mail.ru",
        "lolito22233@mail.ru",
        "resree@gmail.com"]
    let talNumbers: [String] = [
        "89682674413",
        "89655554877",
        "89874454688",
        "89874558741",
        "89874447714",
        "89689852254"]
}
