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
    
    var currentSliderValue: Double = 1.0
    var red:CGFloat = 0.0
    var blue:CGFloat = 0.0
    var green:CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCrayonUI()
        
        sliderLabel.text = "0"
        sliderControl.value = 0
        sliderControl.minimumValue = 0
        sliderControl.maximumValue = 10
        var currentSliderValue: Double = 1.0
        
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

    
    @IBAction func sliderChanged(_ sender: UISlider) {
       sliderLabel.text = Double(sender.value).description
//       var colorValue = CGFloat(sliderControl.value)
        if sender.tag == 1{
            crayon?.red = Double(CGFloat(sender.value/255))        }else if sender.tag == 2{
            crayon?.green = Double(CGFloat(sender.value/255))
        }else{
            crayon?.blue = Double(CGFloat(sender.value/255))
        }
        
        let backgroundColor = UIColor(red: self.red, green: self.green, blue: self.blue, alpha: 1.0)
        
        self.view.backgroundColor = backgroundColor
    }
        
//        self.view.backgroundColor = UIColor.init(displayP3Red: CGFloat(sliderControl.value/255), green:CGFloat (sliderControl2.value/255), blue: CGFloat(sliderControl3.value/255), alpha: 1)    }
    

@IBAction func slider2Changed(_ sender: UISlider) {
     sliderLabel2.text = Double(sender.value).description
        if sender.tag == 1{
            crayon?.red = Double(CGFloat(sender.value/255))
        }else if sender.tag == 2{
            crayon?.green = Double(CGFloat(sender.value/255))
        }else{
            crayon?.blue = Double(CGFloat(sender.value/255))
        }
        
        let backgroundColor = UIColor(red: self.red, green: self.green, blue: self.blue, alpha: 1.0)
        
        self.view.backgroundColor = backgroundColor

}
   
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
       stepperLabel.text = Double(sender.value).description
        if sender.tag == 1{
            crayon?.red = Double(CGFloat(sender.value/255))
        }else if sender.tag == 2{
            crayon?.green = Double(CGFloat(sender.value/255))
        }else{
            crayon?.blue = Double(CGFloat(sender.value/255))
        }
        
        let backgroundColor = UIColor(red: self.red, green: self.green, blue: self.blue, alpha: 1.0)
        
        self.view.backgroundColor = backgroundColor
        
    }


    
    @IBAction func slider3Changed(_ sender: UISlider) {
        sliderLabel3.text = Double(sender.value).description
        if sender.tag == 1{
            crayon?.red = Double(CGFloat(sender.value/255))
        }else if sender.tag == 2{
            crayon?.green = Double(CGFloat(sender.value/255))
        }else{
            crayon?.blue = Double(CGFloat(sender.value/255))
        }
        
        let backgroundColor = UIColor(red: self.red, green: self.green, blue: self.blue, alpha: 1.0)
        
        self.view.backgroundColor = backgroundColor
        
    }

}
    
    



//IBAction func redSliderChanged(_ sender: UISlider) {
//    redLabel.text = Double(sender.value).description
//    self.view.backgroundColor = UIColor.init(displayP3Red: CGFloat(redSlider.value / 255), green: CGFloat(greenSlider.value / 255), blue: CGFloat(blueSlider.value / 255), alpha: 1)
//}
//@IBAction func greenSliderChanged(_ sender: UISlider) {
//    greenLabel.text = Double(sender.value).description
//    self.view.backgroundColor = UIColor.init(displayP3Red: CGFloat(redSlider.value / 255), green: CGFloat(greenSlider.value / 255), blue: CGFloat(blueSlider.value / 255), alpha: 1)
//}
//@IBAction func blueSliderChanged(_ sender: UISlider) {
//    blueLabel.text = Double(sender.value).description
//    self.view.backgroundColor = UIColor.init(displayP3Red: CGFloat(redSlider.value / 255), green: CGFloat(greenSlider.value / 255), blue: CGFloat(blueSlider.value / 255), alpha: 1)
//}
//@IBAction func alphaStepperChanged(_ sender: UIStepper) {
//    alphaLabel.text = Double(sender.value).description
//}
//
//
//
//}
//
//
//}

