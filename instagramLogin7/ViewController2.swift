//
//  ViewController2.swift
//  instagramLogin7
//
//  Created by R&W on 04/02/23.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var lableEmail: UILabel!
    @IBOutlet weak var labelMobil: UILabel!
    @IBOutlet weak var submitbutton: UIButton!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var mobilTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func submitButtonAction(_ sender: UIButton) {
        
        if mobilTextfield.text == "" && emailTextfield.text == ""{
              showAlert(message: "please your enter mobil no & e-mail")
        }
        else if mobilTextfield.text == ""{
            showAlert(message: "please enter your mobil number")
            
        }
        else if emailTextfield.text == ""{
            showAlert(message: "plase enter your e-mail")
        }
        func showAlert(message:String){
            
            let alert = UIAlertController(title: "error", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "ok", style: .default, handler: nil))
            alert.addAction(UIAlertAction.init(title:"cancel" , style: .destructive, handler: nil))
            present(alert, animated: true , completion: nil)
        }
        func navigate(){
            let navigation = storyboard?.instantiateViewController(withIdentifier: "viewcontroller3")as! ViewController3
            navigationController?.pushViewController(navigation, animated: true)
            
        }
       
    }

    
}
