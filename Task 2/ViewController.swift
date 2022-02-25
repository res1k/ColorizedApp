//
//  ViewController.swift
//  Task 2
//
//  Created by Andrey Zhivotov on 22.02.2022.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLabel.text = String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
        
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
    }
    
    
    
    @IBAction func redSliderAction() {
        redLabel.text = String(NSString(format: "%.2f", redSlider.value))
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = String(NSString(format: "%.2f", greenSlider.value))
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: 0, alpha: 1)
    
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = String(NSString(format: "%.2f", blueSlider.value))
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    
    
    
    
}

