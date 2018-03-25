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
    
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
    }
    @IBOutlet weak var textField: UITextField!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

