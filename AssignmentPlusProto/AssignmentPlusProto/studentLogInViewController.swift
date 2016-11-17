//
//  studentLogInViewController.swift
//  AssignmentPlusProto
//
//  Created by Josh Gutterman on 11/14/16.
//  Copyright © 2016 CMPS 115. All rights reserved.
//

import UIKit

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
        
        let studentUsername = studUsername.text;
        let studentPassword = studPassword.text;
        
        let studentUsernameStored = UserDefaults.standard.string(forKey: "studentEmail");
        let studentPasswordStored = UserDefaults.standard.string(forKey: "studentPassword");
        
        if(studentUsernameStored == studentUsername){
            if(studentPasswordStored == studentPassword){
                
                //login successful, change view to student home
                let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                let vc: studentHomeViewController = storyBoard.instantiateViewController(withIdentifier: "studentHome") as! studentHomeViewController
                self.present(vc, animated:true, completion:nil)
                
            }else{
                
                myAlert(alertMessage: "Incorrect password.")
                return;
            }

        }else{
            myAlert(alertMessage: "Unknown username.")
            return;

        }
        
        //display alert message
        
        //store data
        
        
        
    }

    
    func myAlert (alertMessage: String){
        
        let alert = UIAlertController(title: "Alert", message: alertMessage, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
