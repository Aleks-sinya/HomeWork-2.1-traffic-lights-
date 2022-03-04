//
//  ViewController.swift
//  HomeWork 2.1 (traffic lights)
//
//  Created by Алексей Синяговский on 01.03.2022.
//

import UIKit

enum PresentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var lightRedView: UIView!
    @IBOutlet weak var lightYellowView: UIView!
    @IBOutlet weak var lightGreenView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private var presentLight = PresentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        lightRedView.alpha = lightIsOff
        lightYellowView.alpha = lightIsOff
        lightGreenView.alpha = lightIsOff
        
        lightRedView.layer.cornerRadius = lightRedView.frame.width / 2
        lightYellowView.layer.cornerRadius = lightYellowView.frame.width / 2
        lightGreenView.layer.cornerRadius = lightGreenView.frame.width / 2
        startButton.layer.cornerRadius = 10
    }

    @IBAction func startButtonPressed() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        switch presentLight {
            
        case .red:
            lightRedView.alpha = lightIsOn
            lightGreenView.alpha = lightIsOff
            presentLight = .yellow
            
        case .yellow:
            lightYellowView.alpha = lightIsOn
            lightRedView.alpha = lightIsOff
            presentLight = .green
            
        case .green:
            lightGreenView.alpha = lightIsOn
            lightYellowView.alpha = lightIsOff
            presentLight = .red
        }
    }
}

