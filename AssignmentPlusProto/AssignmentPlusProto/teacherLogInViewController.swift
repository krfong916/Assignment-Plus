//
//  teacherLogInViewController.swift
//  AssignmentPlusProto
//
//  Created by Kyle Fong on 11/17/16.
//  Copyright © 2016 CMPS 115. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class teacherLogInViewController: UIViewController {
    
    @IBOutlet weak var teacherLogInEmail: UITextField!
    @IBOutlet weak var teacherLogInPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginAction(_ sender: Any) {
        let teacherLogInEmailText = teacherLogInEmail.text;
        let teacherLogInPasswordText = teacherLogInPassword.text;
        
        //This function takes two arguments - teachersLogInEmailText and teachersLogInPasswordText as string values
        //If the teacher has entered an invalid email, the myAlert() function is called with parameters
        //If the teacher has entered an invalid password, the myAlert() function is called with parameters
        //the last 'else' statement confirms the teacher has logged in successfully and prints to the console
        FIRAuth.auth()?.signIn(withEmail: teacherLogInEmailText!, password: teacherLogInPasswordText!, completion: { (user, error) in
            if(error != nil){
                if(((error?.localizedDescription)! as String) == "There is no user record corresponding to this identifier. The user may have been deleted."){
                    self.myAlert(alertMessage: "Sorry, there are no accounts that exist with that email")
                }else if(((error?.localizedDescription)! as String) == "The password is invalid or the user does not have a password."){
                    self.myAlert(alertMessage: "Sorry, the password you have entered is invalid.")
                }else{
                    print(error?.localizedDescription as Any)
                }
            }else{
                print("Teacher has logged in")
            }
        })
        
    }
    
    func myAlert(alertMessage: String){
        let alert = UIAlertController(title: "Hi", message: alertMessage, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated:true, completion:nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
