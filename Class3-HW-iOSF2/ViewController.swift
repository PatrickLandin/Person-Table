//
//  ViewController.swift
//  Class3-HW-iOSF2
//
//  Created by Patrick Landin on 11/4/14.
//  Copyright (c) 2014 Patrick Landin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        var addPerson1 = Person(Name: "A")
        var addPerson2 = Person(Name: "B")
        var addPerson3 = Person(Name: "C")
        var addPerson4 = Person(Name: "D")
        
        var me = Person(Name: "Patrick L. Landin")
        self.people.append(me)
        
        self.people.append(addPerson1)
        addPerson1.name = "Santa H. Barnswallow"
        self.people.append(addPerson2)
        addPerson2.name = "Clifton B. Clumberbatch"
        self.people.append(addPerson3)
        addPerson3.name = "Rufferford T. Woofinghausen"
        self.people.append(addPerson4)
        addPerson4.name = "Poppington H. Bostwick"
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.people.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PERSON_CELL", forIndexPath: indexPath) as UITableViewCell
        
        var PersonToDisplay = self.people[indexPath.row]
        
        cell.textLabel.text = PersonToDisplay.name
        return cell
    }
}