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
        
        let url = "https://firebasestorage.googleapis.com/v0/b/sweety-603e9.appspot.com/o/temp%2Farticle.html?alt=media&token=dd96d44b-1c90-4357-ac53-6574b5233e5e"
        let myURL = URL(string: url)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
}

