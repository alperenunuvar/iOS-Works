//
//  ViewController.swift
//  6_lifecycle_funcs
//
//  Created by Alperen on 13.03.2020.
//  Copyright © 2020 Alperen. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad() // Uygulama sadece ilk kez çalıştırıldığında çalışır.
    {
        super.viewDidLoad()
        //txtName.text = ""
    }
    
    override func viewDidDisappear(_ animated: Bool) // Bu ekran kapandığında olacaklar.
    {
        print("viewDidDisappear function called.")
    }
    
    override func viewWillDisappear(_ animated: Bool) // Bu ekran kapanacakken olacaklar.
    {
        print("viewWillDisappear function called.")
    }
    
    override func viewDidAppear(_ animated: Bool) // Bu ekran açıldığında olacaklar.
    {
        print("viewDidAppear function called.")
    }
    
    override func viewWillAppear(_ animated: Bool) // Bu ekran açılacağında olacaklar.
    {
        print("viewWillAppear function called.")
        txtName.text = ""
    }

    // Connections
    @IBOutlet weak var txtName: UITextField!
    
    // Variables
    var name = ""
            
    @IBAction func btnSend(_ sender: Any)
    {
        name = txtName.text!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "sendingDataSegue"
        {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.nameFirstVC = name
        }
    }
}
