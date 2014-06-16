//
//  ViewController.swift
//  ALPValidatorExample
//
//  Created by Adam Waite on 06/06/2014.
//  Copyright (c) 2014 adamjwaite. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationController.navigationBarHidden = true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        var detail = segue.destinationViewController as DetailViewController
        var index: Int? = tableView.indexPathForSelectedRow().row
        if let selected = index {
            detail.scene = ALPValidatorDemoScenes().scenes[selected]
        }
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }

}