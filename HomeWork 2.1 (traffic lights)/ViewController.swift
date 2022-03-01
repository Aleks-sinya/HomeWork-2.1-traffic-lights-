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
    
    var presentLight = PresentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        lightRedView.alpha = 0.3
        lightYellowView.alpha = 0.3
        lightGreenView.alpha = 0.3
        
        lightRedView.layer.cornerRadius = 73
        lightYellowView.layer.cornerRadius = 73
        lightGreenView.layer.cornerRadius = 73
        startButton.layer.cornerRadius = 10
    }

    @IBAction func startButtonPressed() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        switch presentLight {
            
        case .red:
            lightRedView.alpha = 1
            lightGreenView.alpha = 0.3
            presentLight = .yellow
            
        case .yellow:
            lightYellowView.alpha = 1
            lightRedView.alpha = 0.3
            presentLight = .green
            
        case .green:
            lightGreenView.alpha = 1
            lightYellowView.alpha = 0.3
            presentLight = .red
        }
    }
}

