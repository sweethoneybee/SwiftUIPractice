//
//  TableViewController.swift
//  SwiftUIWithUITableVC
//
//  Created by 정성훈 on 2021/09/29.
//

import SwiftUI
import UIKit

struct TableViewController: UIViewControllerRepresentable {
    typealias UIViewControllerType = UITableViewController
    
    var users: [User]
    private let cellIdentifier = "cell"
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UITableViewController {
        let tableViewController = UITableViewController()
        tableViewController.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        tableViewController.tableView.dataSource = context.coordinator
        
        return tableViewController
    }
    
    func updateUIViewController(_ tableViewController: UITableViewController, context: Context) {
        tableViewController.tableView.reloadData()
    }
    
    
    class Coordinator: NSObject, UITableViewDataSource {
        var parent: TableViewController
        
        init(_ tableViewController: TableViewController) {
            parent = tableViewController
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return parent.users.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: parent.cellIdentifier, for: indexPath)
            
            cell.textLabel?.text = parent.users[indexPath.row].name
            
            return cell
        }
    }
}

