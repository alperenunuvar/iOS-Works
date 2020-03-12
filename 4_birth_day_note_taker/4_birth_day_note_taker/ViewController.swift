//
//  ViewController.swift
//  4_birth_day_note_taker
//
//  Created by Alperen on 12.03.2020.
//  Copyright © 2020 Alperen. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let name = UserDefaults.standard.object(forKey: "nameDefault")
        let birthDay = UserDefaults.standard.object(forKey: "birthDayDefault")
        
        if let newName = name as? String{
            lblName.text = "Name: \(newName)"
        }
        
        if let newBirthDay = birthDay as? String{
            lblBirthday.text = "Birthday: \(newBirthDay)"
        }
    }
    
    // Connections
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblBirthday: UILabel!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtBirthday: UITextField!
    
        
    @IBAction func btnSave(_ sender: Any)
    {
        UserDefaults.standard.set(txtName.text!, forKey: "nameDefault")
        UserDefaults.standard.set(txtBirthday.text!, forKey: "birthDayDefault")
        
        lblName.text = "Name: \(txtName.text!)"
        lblBirthday.text = "Birthday: \(txtBirthday.text!)"
    }
    
    @IBAction func btnClear(_ sender: Any)
    {
        let name = UserDefaults.standard.object(forKey: "nameDefault")
        let birthDay = UserDefaults.standard.object(forKey: "birthDayDefault")
        
        if (name as? String) != nil
        {
            UserDefaults.standard.removeObject(forKey: "nameDefault")
            lblName.text = "Name: "
        }
        
        if (birthDay as? String) != nil
        {
            UserDefaults.standard.removeObject(forKey: "birthDayDefault")
            lblBirthday.text = "Birthday: "
        }
    }
}
