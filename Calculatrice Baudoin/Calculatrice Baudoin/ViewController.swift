//
//  ViewController.swift
//  Calculatrice Baudoin
//
//  Created by Administrateur on 13/01/2020.
//  Copyright © 2020 Administrateur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number:Double = 0;
    var prevNumber:Double = 0;
    var math = false
    var oper = 0;

    @IBOutlet var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if math == true {
            label.text = String(sender.tag-1)
            number = Double(label.text!)!
            math = false
        }
        else{
            label.text = label.text! + String(sender.tag-1)
                   number = Double(label.text!)!
        }
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16 {
            
            prevNumber = Double(label.text!)!
            
            //div
            if sender.tag == 12{
                label.text = "/";
            }
            //mult
            else if sender.tag == 13{
                label.text = "x";
            }
            //subs
            else if sender.tag == 14{
                label.text = "-";
            }
            //add
            else if sender.tag == 15{
                label.text = "+";
            }
            
            oper = sender.tag
            math = true;
        }
        else if sender.tag == 16 {
            if oper == 12{
                label.text = String(prevNumber / number)
            }
            else if oper == 13 {
                label.text = String(prevNumber * number)
            }
            else if oper == 14 {
                label.text = String(prevNumber - number)
            }
            else if oper == 15 {
                label.text = String(prevNumber + number)
            }
        }
        else if sender.tag == 11
        {
            label.text = ""
            prevNumber = 0;
            number = 0;
            oper = 0;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

