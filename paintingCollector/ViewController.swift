//
//  ViewController.swift
//  paintingCollector
//
//  Created by Karthik Thirunavukkarasan on 5/12/17.
//  Copyright © 2017 Karthik Thiru. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    var paints : [Paint] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do{
            paints = try context.fetch(Paint.fetchRequest())
            tableView.reloadData()
            print("test")
            
        }catch{
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paints.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let paint = paints[indexPath.row]
        cell.textLabel?.text = paint.title
        return cell
    }
    
}
