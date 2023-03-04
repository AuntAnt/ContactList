//
//  DetailedPersonListViewController.swift
//  ContactList
//
//  Created by Anton Kuzmin on 04.03.2023.
//

import UIKit

final class DetailedPersonListViewController: UITableViewController {
    
    private let persons = Person.getPersons()
}

// MARK: - UITableViewDataSource
extension DetailedPersonListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailedPerson", for: indexPath)
        var content = cell.defaultContentConfiguration()

        
        if (indexPath.row == 0) {
            content.text = String(persons[indexPath.section].phone)
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = persons[indexPath.section].email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        return cell
    }
}
