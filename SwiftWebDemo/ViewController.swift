//
//  ViewController.swift
//  SwiftWebDemo
//
//  Created by Hugues Stéphano TELOLAHY on 1/23/18.
//  Copyright © 2018 Hugues Stéphano TELOLAHY. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = "https://firebasestorage.googleapis.com/v0/b/sweety-603e9.appspot.com/o/temp%2Farticle.html?alt=media&token=fd50c2e6-828f-4f7f-bafa-d7e9226ac8f5"
        let myURL = URL(string: url)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    @IBAction func closeTouched(_ sender: Any) {
        self.navigationController?.dismiss(animated: true, completion: nil)
    }
}

