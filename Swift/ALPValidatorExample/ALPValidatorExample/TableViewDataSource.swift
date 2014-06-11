//
//  TableViewDataSource.swift
//  ALPValidatorExample
//
//  Created by Adam Waite on 11/06/2014.
//  Copyright (c) 2014 adamjwaite. All rights reserved.
//

import UIKit

class TableViewDataSource: NSObject, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView
    
    let cellDataCollection: ALPValidatorDemoScene[] = [
        ALPValidatorDemoScene(title: "Hello"),
        ALPValidatorDemoScene(title: "Swift"),
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
