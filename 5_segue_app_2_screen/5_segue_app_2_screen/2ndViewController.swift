//
//  2ndViewController.swift
//  5_segue_app_2_screen
//
//  Created by Alperen on 12.03.2020.
//  Copyright © 2020 Alperen. All rights reserved.
//

import UIKit

class _ndViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        lblName.text = "Name: \(firstVCname)"
    }
    
    // Variables
    var firstVCname = ""
    
    // Connections
    @IBOutlet weak var lblName: UILabel!
}
