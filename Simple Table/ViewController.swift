//
//  ViewController.swift
//  Simple Table
//
//  Created by Kyle Fong on 10/12/16.
//  Copyright © 2016 CMPS 115. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //This is the declaration for the property
    var tableData = [String]();
    
    override func viewDidLoad(){
        super.viewDidLoad();
        
        for count in 0...10{
            tableData.append("Item \(count)");
        }
        
        //Print out the contents of the array into the log
        print("The tableData array contains \(tableData)");
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    //This is the end of the declaration for the property
    
    //MARK: UITableViewDatasource functions
    //The number of sections is 1 because we are using a single-page application
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath
        indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier",
        forIndexPath: indexPath)
        
        cell.textLabel!.text = tableData[indexPath.row]
        
        return cell
    }
    
}

