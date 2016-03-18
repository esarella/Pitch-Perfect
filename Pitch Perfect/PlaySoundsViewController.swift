//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Emmanuel Sarella on 3/17/16.
//  Copyright © 2016 Emmanuel Sarella. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadAudioFile("movie_quote", fileType: "mp3")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playSlowAudio(sender: UIButton) {
        playAudio(0.5)
    }
    
    @IBAction func playFastAudio(sender: UIButton) {
        playAudio(2.0)
    }
    
    @IBAction func stopAudio(sender: UIButton) {
        audioPlayer.stop()
    }
    
    func playAudio(rate: Float)
    {
        audioPlayer.stop()
        audioPlayer.rate = rate
        audioPlayer.currentTime = 0
        audioPlayer.play()
    }
    
    func loadAudioFile(fileName: String, fileType: String){
        do{
            let filePath = NSBundle.mainBundle().pathForResource(fileName, ofType: fileType)
            let filePathURL = NSURL.fileURLWithPath(filePath!)
            
            audioPlayer = try AVAudioPlayer(contentsOfURL:filePathURL)
            audioPlayer.enableRate = true
        }
        catch{
            print("Error fetching audio file")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
