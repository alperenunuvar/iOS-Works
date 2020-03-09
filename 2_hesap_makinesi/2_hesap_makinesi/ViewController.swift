//
//  ViewController.swift
//  2_hesap_makinesi
//
//  Created by Alperen on 8.03.2020.
//  Copyright © 2020 Alperen. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    // Connections
    @IBOutlet weak var txtSayi1: UITextField!
    @IBOutlet weak var txtSayi2: UITextField!
    @IBOutlet weak var txtSonuc: UITextField!
    
    var sonuc : Double = 0
    
    @IBAction func btnSil(_ sender: Any)
    {
        txtSayi1.text = ""
        txtSayi2.text = ""
        txtSonuc.text = ""
    }
    
    @IBAction func btnToplama(_ sender: Any)
    {
        /*
        let sayi1 = Double(txtSayi1.text!)!
        let sayi2 = Double(txtSayi2.text!)!
        let sonuc = sayi1 + sayi2
        
        lblSonuc.text = String(sonuc)
        */
        if let sayi1 = Double(txtSayi1.text!)
        {
            if let sayi2 = Double(txtSayi2.text!)
            {
                sonuc = sayi1 + sayi2
                txtSonuc.text = String(sonuc)
            }
        }
    }
    
    @IBAction func btnCikarma(_ sender: Any)
    {
        if let sayi1 = Double(txtSayi1.text!)
        {
            if let sayi2 = Double(txtSayi2.text!)
            {
                sonuc = sayi1 - sayi2
                txtSonuc.text = String(sonuc)
            }
        }
    }
    
    @IBAction func btnCarpma(_ sender: Any)
    {
        if let sayi1 = Double(txtSayi1.text!)
        {
            if let sayi2 = Double(txtSayi2.text!)
            {
                sonuc = sayi1 * sayi2
                txtSonuc.text = String(sonuc)
            }
        }
    }
    
    @IBAction func btnBolme(_ sender: Any)
    {
        if let sayi1 = Double(txtSayi1.text!)
        {
            if let sayi2 = Double(txtSayi2.text!)
            {
                sonuc = sayi1 / sayi2
                txtSonuc.text = String(sonuc)
            }
        }
    }
    
}
