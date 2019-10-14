//
//  ViewController.swift
//  OSC Player
//
//  Created by Mark Jeschke on 10/13/19.
//  Copyright © 2019 Mark Jeschke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var player = Player.sharedInstance
    
    @IBOutlet weak var oscPlayStopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpButtonStyle()

    }
    
    fileprivate func setUpButtonStyle() {
        oscPlayStopButton.layer.cornerRadius = 12.0
        oscPlayStopButton.layer.borderColor = UIColor.systemBlue.cgColor
        oscPlayStopButton.layer.borderWidth = 1.0
    }

    @IBAction func playOscAction(_ sender: UIButton) {
        player.playOsc()
    }
    
}

