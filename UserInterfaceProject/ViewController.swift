//
//  ViewController.swift
//  UserInterfaceProject
//
//  Created by Vijay Lal on 27/07/24.
//

import UIKit

class ViewController: UIViewController {
    lazy var myTableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "defaultId")
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }
}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultId", for: indexPath)
        cell.textLabel?.text = "Hi"
        return cell
    }
}
extension ViewController {
    func initViews() {
        let guide = view.safeAreaLayoutGuide
        view.addSubview(myTableView)
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        [myTableView.topAnchor.constraint(equalTo: guide.topAnchor, constant: 0),
         myTableView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 0),
         myTableView.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: 0),
         myTableView.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: 0)
        ].forEach({ $0.isActive = true })
    }
}
