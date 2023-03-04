//
//  Person.swift
//  ContactList
//
//  Created by Anton Kuzmin on 03.03.2023.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        let dataSource = DataStore()
        
        let names = dataSource.names.shuffled()
        let surnames = dataSource.surnames.shuffled()
        let phones = dataSource.phones.shuffled()
        let emails = dataSource.emails.shuffled()
        
        for index in 0..<names.count {
            persons.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    phone: phones[index],
                    email: emails[index]
                )
            )
        }
        
        return persons
    }
}
