//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Pavel Bushuyeu on 3/12/18.
//  Copyright © 2018 Pavel Bushuyeu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toggle: UISwitch!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button was tapped!")
        if toggle.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off!")
        }
        print("The slider value is set to \(slider.value)")
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off!")
        }
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        print(sender.value)
    }
    @IBAction func inputFieldChanged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    @IBAction func textFieldEdited(_ sender: UITextField) {
        if let text = sender.text {
        print(text)
        }
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

