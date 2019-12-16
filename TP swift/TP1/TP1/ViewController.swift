//
//  ViewController.swift
//  TP1
//
//  Created by Marylin-Baudoin KOSSI KANA on 04/12/2019.
//  Copyright © 2019 Marylin-Baudoin KOSSI KANA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var champNom: UITextField!
    
    @IBOutlet var champPrenom: UITextField!
            
    @IBOutlet var champEmail: UITextField!
    
    @IBOutlet var champAge: UITextField!
    
    @IBOutlet var champPassword: UITextField!
    
    @IBOutlet var resultMessage: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func validate(_ sender: Any) {
        let recieveNom = champNom.text
        let recievePrenom = champPrenom.text
        let recieveEmail = champEmail.text
        let recieveAge = champAge.text
        let recievePassword = champPassword.passwordRules
        
        var message = ""
        
        let ageNumber = Int(recieveAge!)
        
        if ageNumber! >= 18 {
            message = "Connexion réussit 👍 \n Bienvenue 🤝 Mr/Mme \(recieveNom!) \(recievePrenom!). \n Votre email est : \(String(describing: recieveEmail)) mot de passe est \(recievePassword!)"
        }
        else{
            message = "Echec de connexion ⚠️ Age requis non respecté."
        }
        
        /*message = "Connexion réussit 👍 \n Bienvenue 🤝 Mr/Mme \(recieveNom!) \(recievePrenom!). \n Votre mot de passe est \(recievePassword!)"*/
        
        
        resultMessage.text = message

    }
}

