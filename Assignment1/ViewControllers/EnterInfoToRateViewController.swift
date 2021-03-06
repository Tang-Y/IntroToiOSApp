//
//  EnterInfoToRateViewController.swift
//  Assignment1
//
//  Created by Qingqing Wu on 2021-02-05.
//

import UIKit

class EnterInfoToRateViewController: UIViewController, UITextFieldDelegate {
    
    // Declaration of variables from interface builder
    @IBOutlet var dpDate : UIDatePicker!
    
    @IBOutlet var slAge : UISlider!
    @IBOutlet var lbAge : UILabel!
    
    @IBOutlet var swMale : UISwitch!
    @IBOutlet var swFemale : UISwitch!
    
    @IBOutlet var tfName : UITextField!
    @IBOutlet var tfAddr : UITextField!
    @IBOutlet var tfPhone : UITextField!
    @IBOutlet var tfEmail : UITextField!
    
    @IBOutlet var lbRate : UILabel!
    @IBOutlet var slRate : UISlider!
    
    // Variables declaration
    var name : String!
    var email : String!
    var addr : String!
    var phone : String!
    var msg : String!
    
    // Function of age slider changed
    @IBAction func sliderAgeChanged(sender : UISlider){
        updateAge()
    }
    
    // Function of rate slider changed
    @IBAction func sliderRateChanged(sender : UISlider){
        updateRate()
    }
    
    // Update age label as slider changed
    func updateAge(){
        let age = slAge.value
        let strAge = String(format: "%.f", age)
        lbAge.text = strAge
    }
    
    // Update rate label as slider changed
    func updateRate(){
        let rate = slRate.value
        let strRate = String(format: "%.f", rate)
        lbRate.text = strRate
    }
    
    // Retreive user input data
    func getTheInfo(){
        let data : Data = .init()
        data.setInfo(theName : tfName.text!, theEmail : tfEmail.text!, theAddress : tfAddr.text!, thePhoneNum : tfPhone.text!)
            
        name = data.name!
        email = data.email!
        addr = data.address!
        phone = data.phoneNum!
            
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
    
    // Alert box pops up when user press ok button
    @IBAction func alertMessage(sender : Any){
        getTheInfo()
        
        // Check for required fields
        if !name.isEmpty && !email.isEmpty{
        
            msg = "Thanks " + name + " of " + email + " for the time!"
        
            let alert = UIAlertController(title: "THANK YOU", message: msg, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)

            alert.addAction(okAction)
            present(alert, animated: true)
        }
        else{
            msg = "Please fill the required field!"
            let alert = UIAlertController(title: "Warning!", message: msg, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alert.addAction(okAction)
            present(alert, animated: true)
        }
        
    }
    
    // Function that when male switch is on, user cannot switch on female one
    @IBAction func switchMaleIsOn(sender: UISwitch!){
        let switchMale : Bool = sender.isOn
        
        if switchMale {
            swFemale.setOn(false, animated: true)
        }
    }
    
    // Function that when female switch is on, user cannot switch on male one
    @IBAction func switchFemaleIsOn(sender: UISwitch!){
        let switchFemale : Bool = sender.isOn

        if switchFemale {
            swMale.setOn(false, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateAge()
        updateRate()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
