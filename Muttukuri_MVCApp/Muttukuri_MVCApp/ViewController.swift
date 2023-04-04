//
//  ViewController.swift
//  Muttukuri_MVCApp
//
//  Created by Muttukuri,Navya on 4/4/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userOutlet: UITextField!
    
    
    @IBOutlet weak var passwordOutlet: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signInbtn(_ sender: Any) {
        var input = userOutlet.text!
        var inp = passwordOutlet.text!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue"{
        var destination = segue.destination as! ResultViewController
        }
    }
    

}

