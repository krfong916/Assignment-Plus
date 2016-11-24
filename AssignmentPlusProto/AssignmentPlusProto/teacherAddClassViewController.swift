//
//  teacherAddClassViewController.swift
//  AssignmentPlusProto
//
//  Created by Josh Gutterman on 11/21/16.
//  Copyright © 2016 CMPS 115. All rights reserved.
//

import UIKit
<<<<<<< HEAD
import Firebase
import FirebaseCore
import FirebaseDatabase

class teacherAddClassViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate  {
    
=======

class teacherAddClassViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate  {

>>>>>>> d7ca747c3ccd956ba026689f305382e51cf5ce24
    @IBOutlet weak var subjectPicker: UIPickerView!
    @IBOutlet weak var periodText: UITextField!
    @IBOutlet weak var classNameText: UITextField!
    @IBOutlet weak var termText: UITextField!
<<<<<<< HEAD
    var selectedSubject:String = ""
    let userID = FIRAuth.auth()?.currentUser?.uid
    let ref = FIRDatabase.database().reference()
    var schoolValue:String = ""
    var emailValue:String = ""
    var addClassFlag = false

    
    
    //data for picker view
    var subjectArray = ["", "Science", "Math", "Literature", "History", "Art", "Government", "Language", "Music"];
    
=======
    
    @IBAction func addClassButton(_ sender: Any) {
        //INSER BUTTON STUFF HERE
    }

    //data for picker view
    var subjectArray = ["Science", "Math", "Literature", "History", "Art", "Government", "Language", "Music"];

>>>>>>> d7ca747c3ccd956ba026689f305382e51cf5ce24
    @IBAction func closeButton(_ sender: Any){
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextController: teacherHomeViewController = storyBoard.instantiateViewController(withIdentifier: "teacherHome") as! teacherHomeViewController
        self.present(nextController, animated:true, completion:nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.periodText.delegate = self
        self.classNameText.delegate = self
        self.termText.delegate = self
        
        //numberpad for period tect field
        periodText.keyboardType = UIKeyboardType.numberPad
<<<<<<< HEAD
        
        //Input data into the picker view array
        subjectPicker.delegate = self
        subjectPicker.dataSource = self
        
        //Listens on the school node of current UID on the Teacher table
        //When the 'add class' button is pressed, the value of the teacher's school is added
        ref.child("Teacher").child(userID!).observe(.value, with: { FIRDataSnapshot in
            self.schoolValue = (FIRDataSnapshot).childSnapshot(forPath: "school").value as! String
            self.emailValue = (FIRDataSnapshot).childSnapshot(forPath: "email").value as! String
        })
    }
    
=======

        // Input data into the picker view array
        subjectPicker.delegate = self
        subjectPicker.dataSource = self
    }

>>>>>>> d7ca747c3ccd956ba026689f305382e51cf5ce24
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //hide keyboard when user touches outside keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //hide keyboard with user hits "return"
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        periodText.resignFirstResponder()
        classNameText.resignFirstResponder()
        termText.resignFirstResponder()
        return(true)
    }
    
    //insert subject data into each title of picker
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return subjectArray[row]
    }
    
    //number of rows in subject picker based off of array components
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return subjectArray.count
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    //retreive data from subject picker
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
<<<<<<< HEAD
        let selectedSubjectInitializer = subjectArray[row]
        selectedSubject = selectedSubjectInitializer
    }
    
    @IBAction func addClassButton(_ sender: Any) {
        print(selectedSubject)
        checkForTextFieldErrors(periodText: periodText, classNameText: classNameText, termText: termText)
        if(addClassFlag == true){
            addClass(periodText: periodText, classNameText: classNameText, termText: termText)}
    }
    
    func checkForTextFieldErrors(periodText: UITextField, classNameText: UITextField, termText: UITextField){
        let classPeriod = periodText.text
        let className = classNameText.text
        let classTerm = termText.text
        
        if(classPeriod!.isEmpty || className!.isEmpty || classTerm!.isEmpty){
            myAlert(alertMessage: "Please fill out all fields to add a class")
        }else{
            addClassFlag = true
        }
        
    }
    
    func addClass(periodText: UITextField, classNameText: UITextField, termText: UITextField){
        let classPeriod = periodText.text
        let className = classNameText.text
        let classTerm = termText.text
        
        ref.child("Teacher").child(userID!).child("courses").childByAutoId().updateChildValues(["class": className!, "period": classPeriod!, "school_term": classTerm!])
        ref.child(schoolValue).child(selectedSubject).childByAutoId().updateChildValues(["teacher_email": emailValue, "class": className!, "period": classPeriod!, "school_term": classTerm!]
        )
    }
    
    func myAlert(alertMessage: String){
        let alert = UIAlertController(title: "Hi", message: alertMessage, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler:nil))
        self.present(alert, animated:true, completion:nil)
        
    }
=======
        let selectedSubject = subjectArray[row]
    }
    

>>>>>>> d7ca747c3ccd956ba026689f305382e51cf5ce24
}
