//
//  ContactUsViewController.swift
//  BusinessApplication
//
//  Created by Joel on 21/10/21.
//  Copyright © 2021 LBrands. All rights reserved.
//

import UIKit
import MapKit

class ContactUsViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    var latitude = 51.501364
    var longitude = -0.1418899999999894
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        button1.layer.cornerRadius = 5
        button2.layer.cornerRadius = 5
        button3.layer.cornerRadius = 5
        button4.layer.cornerRadius = 5
        
        let span = MKCoordinateSpanMake(0.005, 0.005)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), span: span)
        
        mapView.setRegion(region, animated: true)
        
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        let pinAnn = MKPointAnnotation()
        pinAnn.coordinate = pinLocation
        pinAnn.title = "My Company"
        pinAnn.subtitle = "123 Street, London, United Kingdom"
        self.mapView.addAnnotation(pinAnn)
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        

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
    
    @IBAction func directions(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "http://maps.apple.com/maps?daddr=\(latitude),\(longitude)")!, options: [:], completionHandler: nil)
        
        
    }
    
    @IBAction func callUs(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "tel://123456789")!, options: [:], completionHandler: nil)
        
    }
    
    
    

}
