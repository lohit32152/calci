//
//  ViewController.swift
//  calci
//
//  Created by Lohit Mahay on 2019-10-01.
//  Copyright © 2019 Applications. All rights reserved.
//
// NAME: LOHIT MAHAY
//STUDENT ID: 301093942
//DESCRIPTION: CALCULATOR APP DESIGNED FOR IOS (SPECIFICIALLY FOR IPHONE XR) WHICH PERFORMS ADDITION,SUBTRACTION,MULTIPLICATION,DIVISION AND FINDING PERCENTAGE


import UIKit

class ViewController: UIViewController {
    var numberOnScreen:Double = 0;
    var oldnumber: Double = 0;
    var mathoperation = false
    var operation = 0;
    
    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
        if mathoperation == true
        {
            label.text = String (sender.tag-1)
            numberOnScreen = Double (label.text!)!
            mathoperation = false
        }
        else {
            label.text = label.text! + String (sender.tag-1)
            numberOnScreen = Double(label.text!)!
        }
        
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        
    if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            oldnumber = Double(label.text!)!
            if sender.tag == 12//division
            {
                label.text = "/";
            }
            else if sender.tag == 13//multiplication
            {
                label.text = "*";
            }
            else if sender.tag == 14//addition
            {
                label.text = "+";
                
            }
            
            else if sender.tag == 15//subtraction
            {
               label.text = "-";
            }
            else if sender.tag == 17//percentage
            {
                label.text = "%";
            }
            
            operation = sender.tag
             mathoperation = true;
        }
         else if  sender.tag == 16
        {
            if operation == 12
           {
            label.text = String(oldnumber / numberOnScreen)
            }
           else if operation == 13
           {
            label.text = String(oldnumber * numberOnScreen)
            }
           else if operation == 14
           {
            label.text = String(oldnumber + numberOnScreen)
            }
           else if operation == 15
           {
            label.text = String(oldnumber - numberOnScreen)
            }
          else if operation == 17
            {
                label.text = String((oldnumber * numberOnScreen)/100)
            }
        }
        else if sender.tag == 11
    {
        label.text = "";
        oldnumber = 0;
        numberOnScreen = 0;
        operation = 0;
        
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

