//
//  studentLogInViewController.swift
//  AssignmentPlusProto
//
//  Created by Josh Gutterman on 11/14/16.
//  Copyright © 2016 CMPS 115. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class studentLogInViewController: UIViewController {
    
    
    @IBOutlet weak var studUsername: UITextField!
    @IBOutlet weak var studPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func studLogInButton(_ sender: Any) {
        
        let studentUsernameText = studUsername.text;
        let studentPasswordText = studPassword.text;
        
        FIRAuth.auth()?.signIn(withEmail: studentUsernameText!, password: studentPasswordText!, completion: { (user, error) in
            if(error != nil){
                if(((error?.localizedDescription)! as String) == "There is no user record corresponding to this identifier. The user may have been deleted."){
                    self.myAlert(alertMessage: "Sorry, there are no accounts with that email")
                }else if(((error?.localizedDescription)! as String) == "The password is invalid or the user does not have a password."){
                    self.myAlert(alertMessage: "Sorry, the password you have entered is invalid.")
                }else{
                    print(error?.localizedDescription as Any)
                }
            }else{
                print("Student has logged in")
            }
        })
        

    }

    
    func myAlert (alertMessage: String){
        
        let alert = UIAlertController(title: "Hi", message: alertMessage, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
