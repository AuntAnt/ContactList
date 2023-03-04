//
//  Person.swift
//  ContactList
//
//  Created by Anton Kuzmin on 03.03.2023.
//

struct Person {
    let name: String
    let surname: String
    let phone: Int
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        let dataSource = DataStore()
        
        for _ in 0..<dataSource.names.count {
            let nameIndex = Int.random(in: 0..<dataSource.names.count)
            let surnameIndex = Int.random(in: 0..<dataSource.surnames.count)
            let phoneIndex = Int.random(in: 0..<dataSource.phones.count)
            let emailIndex = Int.random(in: 0..<dataSource.emails.count)
            
            persons.append(
                Person(
                    name: dataSource.names.remove(at: nameIndex),
                    surname: dataSource.surnames.remove(at: surnameIndex),
                    phone: dataSource.phones.remove(at: phoneIndex),
                    email: dataSource.emails.remove(at: emailIndex)
                )
            )
        }
        
        return persons
    }
}
