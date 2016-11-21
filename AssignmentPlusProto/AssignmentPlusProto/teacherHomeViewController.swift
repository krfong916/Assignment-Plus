//
//  teacherHomeViewController.swift
//  AssignmentPlusProto
//
//  Created by Josh Gutterman on 11/19/16.
//  Copyright © 2016 CMPS 115. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class teacherHomeViewController: UIViewController {
    
    @IBOutlet weak var theDate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        theDate.text = DateFormatter.localizedString(from: NSDate() as Date, dateStyle:DateFormatter.Style.full, timeStyle: DateFormatter.Style.none)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func getTeacherInformation(){
        let information = FIRDatabase.database().reference()
        information.child("Teacher")
        
    }

}
