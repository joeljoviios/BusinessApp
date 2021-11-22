//
//  SocialViewController.swift
//  BusinessApplication
//
//  Created by Joel on 21/10/21.
//  Copyright © 2021 LBrands. All rights reserved.
//

import UIKit

class SocialViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var webview: UIWebView!
    @IBOutlet weak var actInd: UIActivityIndicatorView!
    
    var sentData: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = sentData
        
        if navigationItem.title == "Facebook" {
            
            let url = NSURL(string: "http://www.facebook.com")
            let request = URLRequest(url: url! as URL)
            webview.loadRequest(request)
            
        }
        
        if navigationItem.title == "Twitter" {
            
            let url = NSURL(string: "http://www.twitter.com")
            let request = URLRequest(url: url! as URL)
            webview.loadRequest(request)
            
        }
        
        if navigationItem.title == "Google+" {
            
            let url = NSURL(string: "http://www.google.com")
            let request = URLRequest(url: url! as URL)
            webview.loadRequest(request)
            
        }
        
        if navigationItem.title == "LinkedIn" {
            
            let url = NSURL(string: "http://www.linkedin.com")
            let request = URLRequest(url: url! as URL)
            webview.loadRequest(request)
            
        }
        
        if navigationItem.title == "YouTube" {
            
            let url = NSURL(string: "http://www.youtube.com")
            let request = URLRequest(url: url! as URL)
            webview.loadRequest(request)
            
        }
        
        if navigationItem.title == "Website" {
            
            let url = NSURL(string: "http://www.google.com")
            let request = URLRequest(url: url! as URL)
            webview.loadRequest(request)
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        
        actInd.startAnimating()
        
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
        actInd.stopAnimating()
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
