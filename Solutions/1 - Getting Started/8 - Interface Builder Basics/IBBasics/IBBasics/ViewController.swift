//
//  ViewController.swift
//  IBBasics
//
//  Created by Pavel Bushuyeu on 2/27/18.
//  Copyright © 2018 Pavel Bushuyeu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var myButton: UIButton!

    @IBAction func buttonPressed(_ sender: Any) {
        print("The button was pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let label = UILabel(frame: CGRect(x: 16, y: 16, width: 200, height: 44))
//        view.addSubview(label)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

