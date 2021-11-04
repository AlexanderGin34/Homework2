//
//  ViewController.swift
//  Homework2
//
//  Created by Aleksandr Gineyka on 04.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ViewColors: UIView!
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    private let alphaValue = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: labels
        labelRed.text = String(0)
        labelGreen.text = String(0)
        labelBlue.text = String(0)
        
        // MARK: sliders
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 255
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 255
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 255
        
    }

    @IBAction func sliderRedAction() {
        labelRed.text = String(Int(sliderRed.value))
        ViewColors.backgroundColor = UIColor(red: CGFloat(Int(labelRed.text!)!)/255, green: CGFloat(Int(labelGreen.text!)!)/255, blue: CGFloat(Int(labelBlue.text!)!)/255, alpha: 1)
    
    }
        
    @IBAction func sliderGreenAction() {
        labelGreen.text = String(Int(sliderGreen.value))
        ViewColors.backgroundColor = UIColor(red: CGFloat(Int(labelRed.text!)!)/255, green: CGFloat(Int(labelGreen.text!)!)/255, blue: CGFloat(Int(labelBlue.text!)!)/255, alpha: 1)
        
    }
    
    @IBAction func sliderBlueAction() {
        labelBlue.text = String(Int(sliderBlue.value))
        ViewColors.backgroundColor = UIColor(red: CGFloat(Int(labelRed.text!)!)/255, green: CGFloat(Int(labelGreen.text!)!)/255, blue: CGFloat(Int(labelBlue.text!)!)/255, alpha: 1)
    }
    
    
    
}

