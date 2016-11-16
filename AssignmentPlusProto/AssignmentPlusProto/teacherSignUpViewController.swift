//
//  teacherSignUpViewController.swift
//  AssignmentPlusProto
//
//  Created by Josh Gutterman on 11/16/16.
//  Copyright © 2016 CMPS 115. All rights reserved.
//

import UIKit

class teacherSignUpViewController: UIViewController {

    @IBOutlet weak var teachFirstText: UITextField!
    @IBOutlet weak var teachLastText: UITextField!
    @IBOutlet weak var teachEmailText: UITextField!
    @IBOutlet weak var teachPasswordText: UITextField!
    @IBOutlet weak var teachSchoolText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signUpButtonTeacher(_ sender: Any) {
        
        let teachFirst = teachFirstText.text;
        let teachLast = teachLastText.text;
        let teachEmail = teachEmailText.text;
        let teachPassword = teachPasswordText.text;
        let teachSchool = teachSchoolText.text;
        
        //check for empty fields
        if(teachFirst!.isEmpty || teachLast!.isEmpty || teachEmail!.isEmpty || teachPassword!.isEmpty || teachSchool!.isEmpty){
            
            //display alert message
            myAlert(alertMessage: "All fields are required.")
            return;
        }
        
        //store data
        UserDefaults.standard.setValue(teachEmail, forKey: "teacherEmail")
        UserDefaults.standard.setValue(teachPassword, forKey: "teacherPassword")
        UserDefaults.standard.synchronize()
        
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
