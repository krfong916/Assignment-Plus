//
//  teacherAddClassViewController.swift
//  AssignmentPlusProto
//
//  Created by Josh Gutterman on 11/21/16.
//  Copyright © 2016 CMPS 115. All rights reserved.
//

import UIKit

class teacherAddClassViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {

    @IBOutlet weak var subjectPicker: UIPickerView!
    @IBOutlet weak var periodPicker: UIPickerView!
    
    //data for picker view
    var subjectArray = ["Science", "Math", "Literature", "History", "Art", "Government", "Language", "Music"];

    @IBAction func closeButton(_ sender: Any){
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextController: teacherHomeViewController = storyBoard.instantiateViewController(withIdentifier: "teacherHome") as! teacherHomeViewController
        self.present(nextController, animated:true, completion:nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Input data into the picker view array
        subjectPicker.delegate = self
        subjectPicker.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //insert string data into each title of picker
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return subjectArray[row]
    }
    
    //number of rows in picker view based off of array components
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return subjectArray.count
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }

}
