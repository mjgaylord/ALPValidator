//
//  ViewController.swift
//  ALPValidatorExample
//
//  Created by Adam Waite on 06/06/2014.
//  Copyright (c) 2014 adamjwaite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView
    @IBOutlet var tableViewDataSource: TableViewDataSource

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

class TableViewDataSource: NSObject, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView
    
    struct CellData {
        
        var title: String
        var image: UIImage?
        
        init (title: String) {
            self.title = title
        }
        
    }
    
    let cellDataCollection: CellData[] = [
        CellData(title: "Hello"),
        CellData(title: "Swift"),
    ]
        
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return cellDataCollection.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel.text = cellDataCollection[indexPath.row].title
        return cell
    }
    
}