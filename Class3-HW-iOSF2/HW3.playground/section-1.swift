// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


// Homework for Class#3. Replace whatever interface you have (random labels and button) with a table view. This table view should display a list Person object's names.




self.tableView.dataSource = self
var myPerson = Person()
var addPerson1 = Person()
var addPerson2 = Person()
var addPerson3 = Person()

self.people.append(myPerson)
myPerson.name = "Santa H. Barnswallow"
self.people.append(addPerson1)
addPerson1.name = "Clifton B. Clumberbatch"
self.people.append(addPerson2)
addPerson2.name = "Rufferford T. Woofinghausen"
self.people.append(addPerson3)
addPerson3.name = "Poppington H. Bostwick"