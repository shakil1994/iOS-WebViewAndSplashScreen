//
//  ViewController.swift
//  SplashScreenExample
//
//  Created by DhakaLive on 2/20/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let redius = self.redView.bounds.width / 2
        self.redView.layer.cornerRadius = redius
    }
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        let redius = self.redView.bounds.width / 2
//        self.redView.layer.cornerRadius = redius
//    }


}

