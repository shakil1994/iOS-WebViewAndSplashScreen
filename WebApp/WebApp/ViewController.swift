//
//  ViewController.swift
//  WebApp
//
//  Created by Md Kamrul Hasan on 19/2/20.
//  Copyright © 2020 Md Kamrul Hasan. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://mujib100.gov.bd/")
        webView.load(URLRequest(url: url!))
        
        //let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        //toolbarItems = [refresh]
        //navigationController?.isToolbarHidden = false
    }

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
}
