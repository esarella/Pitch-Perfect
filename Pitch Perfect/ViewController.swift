//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Emmanuel Sarella on 3/17/16.
//  Copyright © 2016 Emmanuel Sarella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var stopButton: UIButton!

    @IBOutlet weak var recordingLabel: UILabel!
    @IBAction func recordButton(sender: UIButton) {
        recordingLabel.hidden = false
        stopButton.hidden = false
    }
    @IBAction func stopAudio(sender: UIButton) {
        recordingLabel.hidden = true
    }
}

