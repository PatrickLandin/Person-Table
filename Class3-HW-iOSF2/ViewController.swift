//
//  ViewController.swift
//  Class3-HW-iOSF2
//
//  Created by Patrick Landin on 11/4/14.
//  Copyright (c) 2014 Patrick Landin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Men that are all of the bass"
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        var addPerson1 = Person()
        var addPerson2 = Person()
        var addPerson3 = Person()
        var addPerson4 = Person()
        
        var me = Person()
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
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SHOW_DETAIL" {
            let detailViewController = segue.destinationViewController as DetailViewController
            let selectedIndexPath = self.tableView.indexPathForSelectedRow()
            var personToPass = self.people[selectedIndexPath!.row]
            detailViewController.selectedPerson = personToPass
        }
    }
    
}