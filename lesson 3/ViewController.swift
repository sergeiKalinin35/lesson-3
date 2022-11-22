//
//  ViewController.swift
//  lesson 3
//
//  Created by Sergey on 22.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label
        mainLabel.text = ""
        mainLabel.font = mainLabel.font.withSize(35)
        mainLabel.numberOfLines = 2
        
       // Segmented Control
        
     
    }
    
@IBAction func segmentedAction() {
        
        
        
    }
    

}

