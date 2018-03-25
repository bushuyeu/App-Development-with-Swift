//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Pavel Bushuyeu on 3/25/18.
//  Copyright © 2018 Pavel Bushuyeu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    @IBOutlet weak var segueSwitch: UISwitch!
    @IBAction func greenButtonTapped(_ sender: UIButton) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
    @IBAction func yellowButtonTapped(_ sender: UIButton) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

