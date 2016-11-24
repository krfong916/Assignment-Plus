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
import FirebaseAuth

class teacherHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
<<<<<<< HEAD
    //var classes = [String]()
    //TEMP for tableview
    var classes = ["P4 Calculus", "P1 English", "P6 US History"]
    
    @IBOutlet weak var tableView: UITableView!
=======
>>>>>>> d7ca747c3ccd956ba026689f305382e51cf5ce24
    @IBOutlet weak var theDate: UILabel!
    @IBAction func logout(_ sender: Any) {
        if FIRAuth.auth()?.currentUser != nil{
            do {
                try FIRAuth.auth()?.signOut()
                print("Teacher has logged out")
                let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "studentOrTeacherView")
                present(viewController, animated: true, completion: nil)
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        theDate.text = DateFormatter.localizedString(from: NSDate() as Date, dateStyle:DateFormatter.Style.full, timeStyle: DateFormatter.Style.none)
<<<<<<< HEAD
        
        //TEMP for tableview
        tableView.reloadData();
=======
>>>>>>> d7ca747c3ccd956ba026689f305382e51cf5ce24

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getTeacherInformation(){
        let information = FIRDatabase.database().reference()
        information.child("Teacher")
        
    }
<<<<<<< HEAD
    
    //number of rows to dsiplay in tableview
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return classes.count
    }
    
    //what to display in rows of table view
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = classes[indexPath.row]
        
        return cell
    }
    
    //go to assignments page when a class is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Teacher has selected a class")
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextController: teacherAssignViewController = storyBoard.instantiateViewController(withIdentifier: "teacherAssign") as! teacherAssignViewController
        self.present(nextController, animated:true, completion:nil)
    }
=======
>>>>>>> d7ca747c3ccd956ba026689f305382e51cf5ce24

}
