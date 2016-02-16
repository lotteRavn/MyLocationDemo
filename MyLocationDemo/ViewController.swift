//
//  ViewController.swift
//  MyLocationDemo
//
//  Created by Lotte Ravn on 15/02/16.
//  Copyright © 2016 Lotte Ravn. All rights reserved.
//
import Foundation
import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    let locationManager = CLLocationManager()
    var desiredAccuracy: CLLocationAccuracy = 0.0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    @IBAction func getCurrenLocation(sender: UIButton) {
        locationManager.delegate = self
        locationManager.desiredAccuracy = desiredAccuracy
        
        locationManager.startUpdatingLocation()
        
    }
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        NSLog("didFailWithError:", error)
        
        let errorAlert = UIAlertController(title: "Error", message: "Failed to get your location", preferredStyle: .Alert)
        errorAlert.presentViewController(errorAlert, animated: true, completion: nil)
    }
    
    func locationManager(manager: CLLocationManager, didUpdateToLocation newLocation: CLLocation, fromLocation oldLocation: CLLocation) {
        NSLog("didUpdateToLocation: %", newLocation)
        let currentLocation = newLocation
        
        longitudeLabel.text = [NSString stringWithFormat,%8.f, currentLocation.coordinate.longitude];
        
        }
        
        }
    

 



