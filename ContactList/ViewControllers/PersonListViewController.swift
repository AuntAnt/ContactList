//
//  ViewController.swift
//  ContactList
//
//  Created by Anton Kuzmin on 03.03.2023.
//

import UIKit

final class PersonListViewController: UITableViewController {
    
    var persons: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarController?.navigationItem.title = "Persons List"
        tableView.rowHeight = 50
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let personVC = segue.destination as? PersonViewController
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personVC?.person = persons[indexPath.row]
    }
}

// MARK: - UITableViewDataSource
extension PersonListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = persons[indexPath.row].fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
}
