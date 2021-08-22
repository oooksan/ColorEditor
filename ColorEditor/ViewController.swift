//
//  ViewController.swift
//  ColorEditor
//
//  Created by Оксана Щукина on 22.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 20
        
        initLabelValues()
        editColorViewBackground()
    }

    
    @IBAction func redSliderAction() {
        redLabel.text = String(round(100 * redSlider.value)/100)
        editColorViewBackground()
    }

    @IBAction func greenSliderAction() {
        greenLabel.text = String(round(100 * greenSlider.value)/100)
        editColorViewBackground()
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = String(round(100 * blueSlider.value)/100)
        editColorViewBackground()
    }
    
    private func initLabelValues() {
        redLabel.text = String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
    }
    
    private func editColorViewBackground() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
}

