//
//  ViewController.swift
//  Two Buttons
//
//  Created by Pavel Bushuyeu on 3/13/18.
//  Copyright © 2018 Pavel Bushuyeu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func setTextButtonTapped(_ sender: UIButton) {
        label.text = textInput.text
    }
    @IBAction func clearTextButtonTapped(_ sender: UIButton) {
        label.text = ""
        textInput.text = ""
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

