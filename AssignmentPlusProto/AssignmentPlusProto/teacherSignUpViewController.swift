//
//  teacherSignUpViewController.swift
//  AssignmentPlusProto
//
<<<<<<< HEAD
//  Created by Kyle Fong on 11/17/16.
=======
//  Created by Josh Gutterman on 11/16/16.
>>>>>>> cc4c73c904e10c620365168166b5c973b7f67988
//  Copyright © 2016 CMPS 115. All rights reserved.
//

import UIKit
<<<<<<< HEAD
import Firebase
import FirebaseAuth

class teacherSignUpViewController: UIViewController {

    @IBOutlet weak var teacherFirstName: UITextField!
    @IBOutlet weak var teacherLastName: UITextField!
    @IBOutlet weak var teacherEmail: UITextField!
    @IBOutlet weak var teacherPassword: UITextField!
    @IBOutlet weak var teacherSchool: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

=======

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
    
>>>>>>> cc4c73c904e10c620365168166b5c973b7f67988
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
<<<<<<< HEAD

    @IBAction func signUpButton(_ sender: Any) {
   
        let teacherFirstNameText = teacherFirstName.text;
        let teacherLastNameText = teacherLastName.text;
        let teacherEmailText = teacherEmail.text;
        let teacherPasswordText = teacherPassword.text;
        let teacherSchoolText = teacherSchool.text;
        let teacherEmailStringCheck: Character = "@";
        var teacherPasswordLengthCheck:Int
            teacherPasswordLengthCheck = 6;
        
        //Checks all text labels for null
        if(teacherFirstNameText!.isEmpty || teacherLastNameText!.isEmpty || teacherEmailText!.isEmpty || teacherPasswordText!.isEmpty || teacherSchoolText!.isEmpty){
            self.myAlert(alertMessage: "You must fill out all fields to sign up.");
        }
        
        //Checks teacher's email for a valid email format
        if(teacherEmailText?.characters.contains(teacherEmailStringCheck))!{
        }else{
            self.myAlert(alertMessage: "Please enter a valid email of the following format: yourTextHere@example.com");
        }
        
        //Checks if password length is greater than 6
        if((teacherPasswordText?.characters.count)! < teacherPasswordLengthCheck){
            self.myAlert(alertMessage: "Please enter a password with more than 6 characters");
        }
        
        //Create teacher with the proper authentication credentials
        FIRAuth.auth()?.createUser(withEmail: teacherEmailText!, password: teacherPasswordText!, completion: { (data, error) in
            if(error != nil){
                print(error?.localizedDescription as Any)
            }else{
                print("Teacher has been created")
            }
        })
    }
    
    func myAlert(alertMessage: String){
        let alert = UIAlertController(title: "Hi", message: alertMessage, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

=======
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
    
>>>>>>> cc4c73c904e10c620365168166b5c973b7f67988
}
