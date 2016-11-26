//
//  ViewController.swift
//  Soundboard
//
//  Created by Terrell Robinson on 11/16/16.
//  Copyright © 2016 FlyGoody. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var volumeSlider: UISlider!
    
    var catSound: AVAudioPlayer! = AVAudioPlayer()
    var dogSound: AVAudioPlayer! = AVAudioPlayer()
    var horseSound: AVAudioPlayer! = AVAudioPlayer()
    var sheepSound: AVAudioPlayer! = AVAudioPlayer()
    var pigSound: AVAudioPlayer! = AVAudioPlayer()
    var frogSound: AVAudioPlayer! = AVAudioPlayer()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initAudioFiles()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func volumeSliderChanged(_ sender: Any) {
        
        catSound.volume = volumeSlider.value
        dogSound.volume = volumeSlider.value
        horseSound.volume = volumeSlider.value
        sheepSound.volume = volumeSlider.value
        pigSound.volume = volumeSlider.value
        frogSound.volume = volumeSlider.value
        
    }
    
    @IBAction func catButtonPressed(_ sender: Any) {
        
        
        catSound.play()
    }
    
    @IBAction func dogButtonPressed(_ sender: Any) {
        
        
        dogSound.play()
    }
    
    
    @IBAction func horseButtonPressed(_ sender: Any) {
        
        
        horseSound.play()
    }
    
    @IBAction func sheepButtonPressed(_ sender: Any) {
        
        
        sheepSound.play()
    }
    
    
    @IBAction func pigButtonPressed(_ sender: Any) {
        
        pigSound.play()
        
    }
    
    @IBAction func frogButtonPressed(_ sender: Any) {
        
        frogSound.play()
        
    }
    
    
    // Helper Methods
    
    func initAudioFiles() {
        
        let catSoundFile = Bundle.main.path(forResource: "Cat", ofType: ".wav")
        let dogSoundFile = Bundle.main.path(forResource: "Dog", ofType: ".wav")
        let horseSoundFile = Bundle.main.path(forResource: "Horse", ofType: ".mp3")
        let sheepSoundFile = Bundle.main.path(forResource: "Sheep", ofType: ".wav")
        let pigSoundFile = Bundle.main.path(forResource: "Pig", ofType: ".wav")
        let frogSoundFile = Bundle.main.path(forResource: "Frog", ofType: ".wav")
        
        do {
            
            try catSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: catSoundFile!))
            try dogSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: dogSoundFile!))
            try horseSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: horseSoundFile!))
            try sheepSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: sheepSoundFile!))
            try pigSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: pigSoundFile!))
            try frogSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: frogSoundFile!))
        }
        
        catch {
            
            print(error)
            
        }

    }
    
    
    
    
    
    
}

