//
//  ViewController.swift
//  ColorMaker_With_UISlider
//
//  Created by Sai Venkata Pranay Boggarapu on 6/12/18.
//  Copyright © 2018 Sai Venkata Pranay Boggarapu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: UI Elements declaration
    
    //MARK: - Red slider
    @IBOutlet var redSlider: UISlider!
    
    //MARK: - Green slider
    @IBOutlet var greenSlider: UISlider!
    
    //MARK: - Blue slider
    @IBOutlet var blueSlider: UISlider!
    
    //MARK: - UI VIew to show the final color
    @IBOutlet var colorView: UIView!

    //MARK: view Did load function
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - Put the slider to minimum values
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
        
        //MARK: - Set the UIView with default color
        colorView.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
    }

    //MARK:- Function to set the color
    @IBAction func chooseColor() {
        let r: CGFloat = CGFloat(redSlider.value)
        let g: CGFloat = CGFloat(greenSlider.value)
        let b: CGFloat = CGFloat(blueSlider.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }

}

