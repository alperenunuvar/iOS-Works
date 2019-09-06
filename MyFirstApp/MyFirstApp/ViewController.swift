//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Alperen on 7.09.2019.
//  Copyright © 2019 Alperen Unuvar. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonClicked(_ sender: Any)
    {
        if(imageView.image == UIImage(named: "1"))
        {
            imageView.image = UIImage(named: "2");
        }
        else
        {
            imageView.image = UIImage(named: "1");
        }
    }
}
