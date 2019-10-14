//
//  Player.swift
//  OSC Player
//
//  Created by Mark Jeschke on 10/13/19.
//  Copyright © 2019 Mark Jeschke. All rights reserved.
//

import Foundation
import AudioKit

class Player {

    static let sharedInstance = Player()
    let osc = AKOscillator()
    let env: AKAmplitudeEnvelope
    var panner = AKPanner()

    init() {
        
        AKSettings.bufferLength = .medium
        AKSettings.playbackWhileMuted = true
        
        do {
            try AKSettings.setSession(category: .playAndRecord, with: [.defaultToSpeaker, .allowBluetooth, .mixWithOthers])
        } catch {
            AKLog("Could not set session category.")
        }
        
        osc.amplitude = 0.3
        env = AKAmplitudeEnvelope(osc)
        env.attackDuration = 0.01
        env.decayDuration = 0.01
        env.sustainLevel = 0.0
        env.releaseDuration = 0.01
        panner = AKPanner(env)
        AudioKit.output = panner
        try! AudioKit.start()
    }

    func playOsc() {
        osc.start()
        env.start()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [unowned self] in
            self.osc.stop()
            self.env.stop()
        }
    }
}

