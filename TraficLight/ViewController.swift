//
//  ViewController.swift
//  TraficLight
//
//  Created by Kirill Lozovoi on 9/17/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var orangeLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var swapTypeTraficLight: UIButton!
    
    private var startLightTrafic = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 65
        orangeLight.layer.cornerRadius = 65
        greenLight.layer.cornerRadius = 65
        swapTypeTraficLight.layer.cornerRadius = 10
        
    }
    
    
    @IBAction func swapCollorDidTapped() {
        swapTypeTraficLight.setTitle("Next", for: .normal)
        
        if startLightTrafic {
            redLight.alpha = 1
            startLightTrafic = false
        } else if redLight.alpha == 1 {
            redLight.alpha = 0.3
            orangeLight.alpha = 1
        } else if orangeLight.alpha == 1 {
            orangeLight.alpha = 0.3
            greenLight.alpha = 1
        } else if greenLight.alpha == 1 {
            greenLight.alpha = 0.3
            redLight.alpha = 1
        }
    }
}

