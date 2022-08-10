//
//  PlaySound.swift
//  Honeymoon
//
//  Created by Abduqodir's MacPro on 2022/08/01.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
  if let path = Bundle.main.path(forResource: sound, ofType: type) {
    do {
      audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
      audioPlayer?.play()
    } catch {
      print("ERROR: could not find and play the sound file!")
    }
  }
}
