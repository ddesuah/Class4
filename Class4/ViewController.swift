
//  ViewController.swift
//  Class4
//
//  Created by Dioh Desuah on 2/17/20.
//  Copyright © 2020 Dioh Desuah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBAction func displayAlert(_ sender: Any) {
        
        //setup alert
        let alert = UIAlertController(title: "Important Update" , message: "Mr. Messner is the greatest.", preferredStyle: .alert)
        
        //Add the action
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: . `default` , handler: { _ in}))
        
        //Display alert
        self.present(alert,animated: true, completion: nil)
    }
    
    @IBAction func loginAlert(_ sender: Any) {
        let ac = UIAlertController(title: "What is your username?" , message: nil, preferredStyle: .alert)
        ac.addTextField()
        let submitAction = UIAlertAction(title: "Submit", style: .default) { [unowned ac] _ in}
        let answer = ac.textFields![0]
        self.usernameField.text = answer.text
        
        let alert = UIAlertController(title: "Welcome: ", message: answer.text, preferredStyle: .alert)
         alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in }))
        
        self.present(alert,animated: true, completion: nil)
        ac.addAction(submitAction)
        present(ac, animated: true)
    }
    
    @IBAction func playMedia(_ sender: Any) {
        var soundID: SystemSoundID = 0
 soundFile:String=Bundle.main.path(forResource:"metal-gear-alert-sound-effect",ofType: "mp3")!
       let soundURL: NSURL = NSURL(fileURLWithPath: soundFile)
       AudioServicesCreateSystemSoundID(soundURL, &soundID)
       AudioServicesPlaySystemSound(soundID)
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }




}
