//
//  ViewController.swift
//  5_segue_app_2_screen
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
    }
    
    // Variables
    var name = ""
    
    // Connections
    @IBOutlet weak var txtName: UITextField!
    
    @IBAction func btnSendNameClicked(_ sender: Any)
    {
        name = txtName.text!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "sendingNameSegue"
        {
            let destinationViewController = segue.destination as! _ndViewController
            destinationViewController.firstVCname = name
        }
    }
}
