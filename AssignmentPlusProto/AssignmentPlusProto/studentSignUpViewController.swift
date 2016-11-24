//
//  studentSignUpViewController.swift
//  AssignmentPlusProto
//
//  Created by Josh Gutterman on 11/14/16.
//  Copyright © 2016 CMPS 115. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class studentSignUpViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var studFirstText: UITextField!
    @IBOutlet weak var studLastText: UITextField!
    @IBOutlet weak var studEmailText: UITextField!
    @IBOutlet weak var studPasswordText: UITextField!
    @IBOutlet weak var studSchoolText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.studFirstText.delegate = self
        self.studLastText.delegate = self
        self.studEmailText.delegate = self
        self.studPasswordText.delegate = self
        self.studSchoolText.delegate = self
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
        let studEmailStringCheck: Character = "@";
        var studPasswordLengthCheck:Int
            studPasswordLengthCheck = 6;
        
        //Checks all text labels for null
        if(studFirst!.isEmpty || studLast!.isEmpty || studEmail!.isEmpty || studPassword!.isEmpty || studSchool!.isEmpty){
            self.myAlert(alertMessage:"You must fill out all fields to sign up.");
            return
        }
        
        //Checks student email for a valid email format
        if(studEmail?.characters.contains(studEmailStringCheck))!{
        }else{
            self.myAlert(alertMessage: "Please enter a valid email of the following format: yourTextHere@example.com");
        }
        
        //Checks if password length is greater than 6
        if((studPassword?.characters.count)! < studPasswordLengthCheck){
            self.myAlert(alertMessage: "Please enter a password with more than 6 characters");
        }
        
        //Create student with the proper authentication credentials
        FIRAuth.auth()?.createUser(withEmail: studEmail!, password: studPassword!, completion: { (user, error) in
            if (error != nil){
                print(error?.localizedDescription as Any)
                self.myAlert(alertMessage:" " + (error?.localizedDescription)! as String)
            }else{
                print("Student has been created")
            }
        })
        
    }
    
    //hide keyboard when user touches outside keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //hide keyboard with user hits "return"
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        studFirstText.resignFirstResponder()
        studLastText.resignFirstResponder()
        studEmailText.resignFirstResponder()
        studPasswordText.resignFirstResponder()
        studSchoolText.resignFirstResponder()
        return(true)
    }
    
    //alert message function
    func myAlert(alertMessage: String){
        let alert = UIAlertController(title: "Hey there", message: alertMessage, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
