//
//  ViewController.swift
//  CutsceneForGAM720
//
//  Created by Rachel Saunders on 24/04/2020.
//  Copyright © 2020 Rachel Saunders. All rights reserved.
//
// THIS APP IS SOLELY FOR THE PURPOSE OF ASSIGNMENT 2 FOR GAM720 MODULE AS PART OF THE MASTERS DEGREE FOR CREATIVE APP DEVELOPMENT. ALL PROGRAMMING, NOTES AND ARTWORK BY RACHEL SAUNDERS. THIS IS A TEST TO SEE HOW 2D PLATFORMING WORKS. COPYRIGHT RACHEL SAUNDERS.
//
//
// SOUND EXAMPLES ARE FROM GAMEDEVMARKET.NET BY TIM BEEK. THESE WILL NOT BE USED IN THE FINAL APP.

import UIKit
import AVFoundation

// Images are scaled to fill as they are examples and not final images.
// Images all have image view contraints of 0 for each edge
// Tested and fully functional on an iPhone 8
// Removed animation from Segue properties

// Current Plan - Add files for all the view controllers, link up, and add the AVFoundation framework for sounds. Sounds will have to be background for each controller and not loop/repeat unless nessessary.


class ViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            let audioPath =
                Bundle.main.path(forResource: "zoom", ofType: "wav")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        } catch {
            // Error
        }
        
        player.play()
   
    }



}



