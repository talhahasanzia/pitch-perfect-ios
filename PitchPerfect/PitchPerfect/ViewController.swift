//
//  ViewController.swift
//  PitchPerfect
//
//  Created by ta1ha on 04/08/2017.
//  Copyright © 2017 ta1ha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var recordingLabel: UILabel!
    
    @IBOutlet weak var stopButton: UIButton!
    
    @IBOutlet weak var recordingButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        stopButton.isEnabled=false
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func recordAudio(_ sender: Any) {
        
        recordingLabel.text="Recording in progress!"
        stopButton.isEnabled=true
        recordingButton.isEnabled=false
        
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        recordingLabel.text="Recording Complete!"
        recordingButton.isEnabled=true
        stopButton.isEnabled=false
    }
}

