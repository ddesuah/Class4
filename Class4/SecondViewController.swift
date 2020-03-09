//
//  SecondViewController.swift
//  Class4
//
//  Created by Dioh Desuah on 2/24/20.
//  Copyright © 2020 Dioh Desuah. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func alert2(_ sender: Any) {
        let alert = UIAlertController(title: "Important Update" , message: "Mr. Messner is the greatest.", preferredStyle: .alert)
        
        //Add the action
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: . `default` , handler: { _ in}))
        
        //Display alert
        self.present(alert,animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    

}
