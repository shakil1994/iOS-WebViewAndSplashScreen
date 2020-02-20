//
//  ViewController.swift
//  SWebViewExample
//
//  Created by DhakaLive on 2/20/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    //@IBOutlet weak var redView: UIView!
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://mujib100.gov.bd/")
        webView.load(URLRequest(url: url!))
        
        //let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        //toolbarItems = [refresh]
        //navigationController?.isToolbarHidden = false
    }

//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        let radius = self.redView.bounds.width / 2
//        self.redView.layer.cornerRadius = radius
//    }
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }

}

