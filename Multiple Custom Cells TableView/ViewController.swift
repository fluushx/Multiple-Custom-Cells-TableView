//
//  ViewController.swift
//  Multiple Custom Cells TableView
//
//  Created by Felipe Ignacio Zapata Riffo on 24-08-21.
//

import UIKit

class ViewController: UIViewController {

    let tableView : UITableView = {
       let tableView = UITableView()
        tableView.register(SimpleTableViewCell.self, forCellReuseIdentifier: SimpleTableViewCell.identifier)
        tableView.register(ImageTableViewCell.nib(), forCellReuseIdentifier: ImageTableViewCell.identifier)
        tableView.register(CodedTableViewCell.self, forCellReuseIdentifier: CodedTableViewCell.identifier)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 100
        
         
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame =  CGRect(x: 0, y: view.safeAreaInsets.top, width: view.bounds.size.width, height: view.bounds.size.height)
    }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row < 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CodedTableViewCell.identifier, for: indexPath) as! CodedTableViewCell
            cell.configure()
            
            return cell
        }
        
        if indexPath.row < 10 {
            let cell =  tableView.dequeueReusableCell(withIdentifier: ImageTableViewCell.identifier,for: indexPath) as! ImageTableViewCell
            cell.configure(with: "image1")
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewCell.identifier,for: indexPath)
        cell.textLabel?.text = "Text test"
        return cell
    }
    
}
