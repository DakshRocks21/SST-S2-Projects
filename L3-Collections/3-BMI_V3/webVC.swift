//
//  webVC.swift
//  3-BMI_V3
//
//  Created by Daksh Thapar on 20/4/21.
//

import UIKit
import WebKit

class webVC: UIViewController {
    // Outlet
    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Web View"
        
        // URL
        let myURL = URL(string: "https://d2e1asnsl7br7b.cloudfront.net/7782e205e72f43aeb4a48ec97f66ebbe/index.m3u8")
        
        // Request
        let myRequest = URLRequest(url: myURL!)
        
        // Load
        webview.load(myRequest)
    }
}
