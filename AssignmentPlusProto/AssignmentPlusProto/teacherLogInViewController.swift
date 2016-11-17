//
//  teacherLogInViewController.swift
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

class teacherLogInViewController: UIViewController {

<<<<<<< HEAD
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

=======
    @IBOutlet weak var teachUsername: UITextField!
    @IBOutlet weak var teachPassword: UITextField!

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

=======
    @IBAction func teachLogInButton(_ sender: Any) {
        
        let teacherUsername = teachUsername.text;
        let teacherPassword = teachPassword.text;
        
        //store data
        let teacherUsernameStored = UserDefaults.standard.string(forKey: "teacherEmail");
        let teacherPasswordStored = UserDefaults.standard.string(forKey: "teacherPassword");
        
        if(teacherUsernameStored == teacherUsername){
            if(teacherPasswordStored == teacherPassword){
                
                //login successful, change view to student home
                let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                let vc: teacherHomeViewController = storyBoard.instantiateViewController(withIdentifier: "teacherHome") as! teacherHomeViewController
                self.present(vc, animated:true, completion:nil)
                
            }else{
                
                myAlert(alertMessage: "Incorrect password.")
                return;
            }
            
        }else{
            myAlert(alertMessage: "Unkown username.")
            return;
            
        }
        
    }
    
    func myAlert (alertMessage: String){
        
        let alert = UIAlertController(title: "Alert", message: alertMessage, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
>>>>>>> cc4c73c904e10c620365168166b5c973b7f67988
}
