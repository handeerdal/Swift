//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation

var secondsRemaining = 60 // Set the initial time in seconds

var timer = Timer()
var originalTitle: String?

class ViewController: UIViewController {
    
      var player: AVAudioPlayer!
    
    
 
   
    
    let hardnessDict =  ["Soft" : 10 , "Medium" : 15 , "Hard" : 19]


    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Store the original text when the view loads
        originalTitle = titleLabel.text
    }
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        
        timer.invalidate()

        let hardness = sender.currentTitle!

        self.progressView.progress=0.0
        // Create a Timer that fires every second
         timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            // Check if there are seconds remaining
            if secondsRemaining > 0 {
                secondsRemaining -= 1
                print("\(secondsRemaining) seconds remaining")
                self.progressView.progress+=(1/Float(self.hardnessDict[hardness]!))
            } else {
                // If the countdown is complete, invalidate the timer
                timer.invalidate()
                print("Countdown complete!")
                self.titleLabel.text = "Your Egg Is Ready!"
                self.progressView.progress=1.0
                self.playSound(soundName: "alarm_sound")
                        //Reduces the sender's (the button that got pressed) opacity to half.
                          sender.alpha = 0.5

                          //Code should execute after 0.2 second delay.
                          DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                              //Bring's sender's opacity back up to fully opaque.
                              sender.alpha = 1.0
                          }

                DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                           // Change the title label text to a new value
                    self.titleLabel.text = originalTitle
                       }
                self.progressView.progress=0.0

            }
        }
        
        
        secondsRemaining = hardnessDict[hardness]!

       // Add the timer to the current run loop
            RunLoop.current.add(timer, forMode: .common)

            // Start the run loop
            RunLoop.current.run()
            

        /* if (hardness == "Hard"){
            print(hardTime)
        }
        
        if (hardness == "Medium"){
            print(mediumTime)
        }
        
        if (hardness == "Soft"){
            print(softTime)
        }
       // print(sender.currentTitle) */
        
     //print(hardnessDict[hardness])
        
    }
    
    func playSound(soundName : String) {
         let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
         player = try! AVAudioPlayer(contentsOf: url!)
         player.play()
                 
     }
    
}
