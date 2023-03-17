//
//  ViewController.swift
//  instagramLogin7
//
//  Created by R&W on 01/01/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgetPasswordButton: UIButton!
    @IBOutlet weak var passwordTextfiled: UITextField!
    @IBOutlet weak var usernameTextfield: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUsernameLabel()
        setPasswordLabel()
    }
    func setUsernameLabel(){
        //usernameLabel.layer.cornerRadius = 10
        //usernameLabel.layer.borderWidth = 5
        usernameLabel.layer.borderColor = UIColor.black.cgColor
        usernameLabel.layer.masksToBounds = true
        
    }
    func setPasswordLabel(){
        //passwordLabel.layer.cornerRadius = 10
       //passwordLabel.layer.borderWidth = 5
        passwordLabel.layer.borderColor = UIColor.black.cgColor
        passwordLabel.layer.masksToBounds = true
        
    }
    func setLoginButton(){
        //loginButton.layer.cornerRadius = 10
        //loginButton.layer.borderWidth = 5
        loginButton.layer.borderColor = UIColor.black.cgColor
        loginButton.layer.masksToBounds = true
    }

    @IBAction func loginButtonAction(_ sender: UIButton) {
        
        if usernameTextfield.text == "" && passwordTextfiled.text == ""{
              showAlert(message: "please youe enter username & password")
        }
        else if usernameTextfield.text == ""{
            showAlert(message: "please enter your username")
            
        }
        else if passwordTextfiled.text == ""{
            showAlert(message: "plase enter your password")
        }
        func showAlert(message:String){
            
            let alert = UIAlertController(title: "error", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "ok", style: .default, handler: nil))
            alert.addAction(UIAlertAction.init(title:"cancel" , style: .destructive, handler: nil))
            present(alert, animated: true , completion: nil)
        }
        
        func navigate(){
            let navigation = storyboard?.instantiateViewController(withIdentifier: "viewcontroller")as! ViewController
            navigationController?.pushViewController(navigation, animated: true)
            
        }
    }
    
    
}

