//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?
    
    
    
    
    @IBOutlet weak var ButtonName: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: Any) {
        ButtonName.setTitle("MaNigga", for: .normal)
 
        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else { return }
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
                try AVAudioSession.sharedInstance().setActive(true)
                player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                guard let player = player else { return }

                player.play(
                )
            } catch let error{
                print(error.localizedDescription)
            }

}


}
