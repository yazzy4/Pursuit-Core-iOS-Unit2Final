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
    @IBOutlet weak var sliderControl3: UISlider!
    @IBOutlet weak var sliderLabel3: UILabel!
    
    @IBOutlet var background: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCrayonUI()
        
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
        
        
        sliderLabel3.text = "0"
        sliderControl3.value = 0
        sliderControl3.minimumValue = 0
        sliderControl3.maximumValue = 10

    }
    
    public func updateCrayonUI(){
        colorLabel.text = crayon?.name
        let colors = UIColor.init(displayP3Red: CGFloat(crayon!.red/255), green:CGFloat(crayon!.green/255), blue:CGFloat(crayon!.blue/255), alpha: 1.0)
        background.backgroundColor = colors
        
         
        
    }

//    private func updateRecipeUI() {
//        crayonImage.image = recipe?.image
//        recipeName.text = recipe?.name
//        recipeDescription.text = recipe?.description
//    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
       sliderLabel.text = Int(sender.value).description
    }
    
    @IBAction func slider2Changed(_ sender: UISlider) {
        sliderLabel2.text = Int(sender.value).description
    }
    
   
    @IBAction func stepperChanged(_ sender: UIStepper) {
        stepperLabel.text = Int(sender.value).description
        
    }
   
    @IBAction func slider3Changed(_ sender: UISlider) {
        sliderLabel3.text = Int(sender.value).description
    }
    
    
    
}
