//
//  ProfileViewController.swift
//  healapp
//
//  Created by Admin on 2/25/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var currentmeds: UITextField!
    @IBOutlet weak var allergy: UITextField!
    @IBOutlet weak var previousdisease: UITextField!
    var userData = ["name": "Alena Hawk", "phone": "3125369986", "current-medication": "-", "allergies": "-", "previousdisease": "-"] as [String : Any]
    var user: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func savebutton(_ sender: Any) {
        userData["name"] = name.text!
        userData["phone"] = phone.text!
        userData["current-medication"] = currentmeds.text!
        userData["allergies"] = allergy.text!
        userData["previousdisease"] = previousdisease.text!
        DataService.ds.createClient(user, user: userData )
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "userhome", sender: self)
        }
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
