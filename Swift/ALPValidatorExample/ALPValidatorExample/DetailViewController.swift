//
//  DetailViewController.swift
//  ALPValidatorExample
//
//  Created by Adam Waite on 11/06/2014.
//  Copyright (c) 2014 adamjwaite. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var detailLabel: UILabel
    @IBOutlet var textField: UITextField
    @IBOutlet var validationsLabel: UILabel
    
    var scene: ALPValidatorDemoScene?
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationController.navigationBarHidden = false
        title = scene!.title
        detailLabel.text = scene!.detail
    }
    
}