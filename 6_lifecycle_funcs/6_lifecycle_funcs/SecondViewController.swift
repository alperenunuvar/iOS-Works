//
//  SecondViewController.swift
//  6_lifecycle_funcs
//
//  Created by Alperen on 13.03.2020.
//  Copyright © 2020 Alperen. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        lblName.text = "Name: \(nameFirstVC)";
    }
    
    // Variables
    var nameFirstVC = ""
    
    // Connections
    @IBOutlet weak var lblName: UILabel!
}
