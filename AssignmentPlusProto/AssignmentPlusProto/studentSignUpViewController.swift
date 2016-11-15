//
//  studentSignUpViewController.swift
//  AssignmentPlusProto
//
//  Created by Josh Gutterman on 11/14/16.
//  Copyright © 2016 CMPS 115. All rights reserved.
//

import UIKit

class studentSignUpViewController: UIViewController {
    
    
    @IBOutlet weak var studFirstText: UITextField!
    @IBOutlet weak var studLastText: UITextField!
    @IBOutlet weak var studEmailText: UITextField!
    @IBOutlet weak var studPasswordText: UITextField!
    @IBOutlet weak var studSchoolText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func signUpButton(_ sender: Any) {
        
        let studFirst = studFirstText.text;
        let studLast = studLastText.text;
        let studEmail = studEmailText.text;
        let studPassword = studPasswordText.text;
        let studSchool = studSchoolText.text;
        
        //check for empty fields
        if(studFirst!.isEmpty || studLast!.isEmpty || studEmail!.isEmpty || studPassword!.isEmpty || studSchool!.isEmpty){
            
            //display alert message
            myAlert(alertMessage: "All fields are required.")
            return;
        }
        
        //store data
        
        
        //successful sign up message
        let alert = UIAlertController(title: "Thank you!", message: "You are now registered.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        dismiss(animated: true, completion: nil)
        
        
        
        
    }
    
    //alert message function
    func myAlert (alertMessage: String){
        
        let alert = UIAlertController(title: "Alert", message: alertMessage, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
