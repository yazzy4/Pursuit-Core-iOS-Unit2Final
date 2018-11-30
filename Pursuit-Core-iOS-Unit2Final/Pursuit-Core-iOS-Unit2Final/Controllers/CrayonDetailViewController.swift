//
//  CrayonDetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Yaz Burrell on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonDetailViewController: UIViewController {

    public var crayon: Crayon?
    
    @IBOutlet weak var colorLabel: UILabel!
    
    @IBOutlet weak var sliderControl: UISlider!
    
    @IBOutlet weak var sliderLabel: UILabel!
    
    @IBOutlet weak var sliderControl2: UISlider!
    
    @IBOutlet weak var sliderLabel2: UILabel!
    
    @IBOutlet weak var stepperControl: UIStepper!
    
    @IBOutlet weak var stepperLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderLabel.text = "0"
        sliderControl.value = 0
        sliderControl.minimumValue = 0
        sliderControl.maximumValue = 10
        
        sliderLabel2.text = "0"
        sliderControl2.value = 0
        sliderControl2.minimumValue = 0
        sliderControl2.maximumValue = 10
      
        stepperLabel.text = "0"
        stepperControl.minimumValue = 0
        stepperControl.maximumValue = 20

    }
    
   

}
