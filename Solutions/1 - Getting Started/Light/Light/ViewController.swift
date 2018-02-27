//
//  ViewController.swift
//  Light
//
//  Created by Pavel Bushuyeu on 2/27/18.
//  Copyright © 2018 Pavel Bushuyeu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = true
    
    @IBOutlet weak var lightButton: UIButton!
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        lightOn = !lightOn
        updateUI()
    }
    
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
//        if lightOn {
//            view.backgroundColor = .white
////            lightButton.setTitle("O", for: .normal)
//        } else {
//            view.backgroundColor = .black
////            lightButton.setTitle("Off", for: .normal)
//        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

