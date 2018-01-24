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
        
        let myURL = URL(string: "https://www.youtube.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
//
//        NSString *path = [[NSBundle mainBundle] pathForResource:htmlFile ofType:@"html"];
//        NSURL *url = [NSURL fileURLWithPath:path];
//
//        NSString *htmlBody = [NSString stringWithContentsOfFile:path
//            encoding:NSUTF8StringEncoding
//            error:nil];
//        [self.webView loadHTMLString:htmlBody baseURL:url];
        
    }
    
}

