//
//  ServicesViewController.swift
//  BusinessApplication
//
//  Created by Joel on 21/10/21.
//  Copyright © 2021 LBrands. All rights reserved.
//

import UIKit

class ServicesViewController: UIViewController {
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailDescription: UITextView!
    
    var  sentData:String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        self.navigationItem.title = sentData
        
        if self.navigationItem.title == "Service 1" {
            
            detailImage.image = UIImage(named: "Image1")
            detailDescription.text = "This is service 1"
            
        }
        
        if self.navigationItem.title == "Service 2" {
            
            detailImage.image = UIImage(named: "Image2")
            detailDescription.text = "This is service 2"
            
        }
        
        if self.navigationItem.title == "Service 3" {
            
            detailImage.image = UIImage(named: "Image3")
            detailDescription.text = "This is service 3"
            
        }
        
        if self.navigationItem.title == "Service 4" {
            
            detailImage.image = UIImage(named: "Image4")
            detailDescription.text = "This is service 4"
            
        }
        
        if self.navigationItem.title == "Service 5" {
            
            detailImage.image = UIImage(named: "Image5")
            detailDescription.text = "This is service 5"
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
