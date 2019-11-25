//
//  ViewController.swift
//  Vkontakte_L1
//
//  Created by admin on 24.11.2019.
//  Copyright © 2019 Artem Pozdnyakov. All rights reserved.
//
//
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLable: UILabel!
    
    
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hideAction = UITapGestureRecognizer(target: self, action: #selector(hideKeyborard))
        view.addGestureRecognizer(hideAction)
    
    }
    
    @objc func hideKeyborard(){
        view.endEditing(true)
    }

    @IBAction func pressButton(_ sender: Any) {
        guard let loginInput = login.text,
            let passwordInput = password.text else{
                return
        }
        
        print(loginInput + " " + passwordInput)
    }
}

