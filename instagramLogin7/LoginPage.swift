//
//  LoginPage.swift
//  instagramLogin7
//
//  Created by R&W on 01/01/18.
//

import UIKit

class LoginPage: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webview.loadRequest(URLRequest(url:URL(string:"")!))
    }
    

    
}
