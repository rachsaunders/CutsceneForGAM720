//
//  SixthViewController.swift
//  CutsceneForGAM720
//
//  Created by Rachel Saunders on 28/04/2020.
//  Copyright © 2020 Rachel Saunders. All rights reserved.
//

import UIKit
import AVFoundation

class SixthViewController: UIViewController {

     var player: AVAudioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        do {
            let audioPath =
                Bundle.main.path(forResource: "question", ofType: "wav")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        } catch {
            // Error
        }
        
        player.play()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
