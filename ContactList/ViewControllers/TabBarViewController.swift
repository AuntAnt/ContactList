//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Anton Kuzmin on 04.03.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {

    private let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers?.forEach { viewController in
            if let personListVC = viewController as? PersonListViewController {
                personListVC.persons = persons
            } else if let detailedPersonListVC = viewController
                        as? DetailedPersonListViewController {
                detailedPersonListVC.persons = persons
            }
        }
    }
}
