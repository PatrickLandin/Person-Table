//
//  DetailViewController.swift
//  Class3-HW-iOSF2
//
//  Created by Patrick Landin on 11/7/14.
//  Copyright (c) 2014 Patrick Landin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    var selectedPerson = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = self.selectedPerson.name
        self.nameLabel.text = self.selectedPerson.name
        self.view.backgroundColor = UIColor.blueColor()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}