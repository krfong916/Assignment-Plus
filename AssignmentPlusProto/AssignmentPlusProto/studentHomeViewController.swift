//
//  studentHomeViewController.swift
//  AssignmentPlusProto
//
//  Created by Josh Gutterman on 11/15/16.
//  Copyright © 2016 CMPS 115. All rights reserved.
//

import Foundation
import UIKit

class studentHomeViewController: UIViewController {

    @IBOutlet weak var studentNameLabel: UILabel!
    
    var studentName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        studentNameLabel.text = studentName
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
