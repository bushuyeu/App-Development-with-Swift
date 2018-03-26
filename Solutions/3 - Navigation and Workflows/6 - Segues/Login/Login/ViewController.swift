//
//  ViewController.swift
//  Login
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
    @IBOutlet weak var forgottenPassword: UIButton!
    @IBOutlet weak var forgottenUsername: UIButton!
    @IBOutlet weak var usernameInput: UITextField!
    
    @IBAction func forgottenPasswordTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "forgottenCreds", sender: forgottenPassword)
    }
    
    @IBAction func forgottenUsernameTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "forgottenCreds", sender: forgottenUsername)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        if sender == forgottenPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgottenUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = usernameInput.text
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

