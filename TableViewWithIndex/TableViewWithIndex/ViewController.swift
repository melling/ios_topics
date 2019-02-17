//
//  ViewController.swift
//  TableViewWithIndex
//
//  Created by Michael Mellinger on 3/9/16.
//

import UIKit

class ViewController: UIViewController {

    private let tableViewController = SimpleTableViewController()
    
    // MARK: - Build View

    private func addTableView() {
        
        tableViewController.tableView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(tableViewController.tableView)
        let guide = view.safeAreaLayoutGuide

        NSLayoutConstraint.activate([
            tableViewController.tableView.topAnchor.constraint(equalToSystemSpacingBelow: guide.topAnchor, multiplier: 1.0),
            tableViewController.tableView.bottomAnchor.constraint(equalToSystemSpacingBelow: guide.bottomAnchor, multiplier: 1.0),
            tableViewController.tableView.leftAnchor.constraint(equalTo: guide.leftAnchor, constant: 0),
            tableViewController.tableView.rightAnchor.constraint(equalTo: guide.rightAnchor, constant: 0),
            
            ])
    }
    
    // MARK: - View Management

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.hidesSearchBarWhenScrolling = false
        
        self.title = "Table Subclass/Index"
        view.backgroundColor = .gray
        
        addTableView()
    }

}

