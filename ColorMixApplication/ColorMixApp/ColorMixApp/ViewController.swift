//
//  ViewController.swift
//  ColorMixApp
//
//  Created by IACD-05 on 2022/05/29.
//

import UIKit

class ViewController: UIViewController {
    //the view
    @IBOutlet weak var colorSwatchView: UIView!
    
    //the switches
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
   //the UIsliders
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //customising a border for the view
        colorSwatchView.layer.borderWidth = 4
        colorSwatchView.layer.cornerRadius = 20
        colorSwatchView.layer.borderColor = UIColor.gray.cgColor

        updatingColorValues()
        updatingUIControls()
        
        
    }
    
    
    
//IBACTIONS
    //for the switches!
    @IBAction func redSwitchChanged(_ sender: UISwitch) {
        updatingUIControls()
    }
    
    @IBAction func GreenSwitchChanged(_ sender: UISwitch) {
        updatingUIControls()
    }
    
    @IBAction func blueSwitchChanged(_ sender: UISwitch) {
        updatingUIControls()
    }
    
    // for the sliders
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        updatingColorValues()
        
    
    }
    
    // reset button
    
    @IBAction func resetButtonClicked(_ sender: UIButton) {
        
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        redSlider.value = 0
        blueSlider.value = 0
        greenSlider.value = 0
        
        updatingColorValues()
    }
    
    
    //updating the color in the view function
    
    func updatingColorValues(){
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn{
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green , blue: blue, alpha: 1)
        colorSwatchView.backgroundColor = color
    }
    
    func updatingUIControls(){
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
        
       
        
    }
    
}

