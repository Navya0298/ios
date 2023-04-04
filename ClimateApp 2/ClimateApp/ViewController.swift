//
//  ViewController.swift
//  ClimateApp
//
//  Created by Muttukuri,Navya on 2/21/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Enterthetemp: UITextField!
    
    
    @IBOutlet weak var Imagefield: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Clickme(_ sender: UIButton) {
        
        let tempEntered =  Int(Enterthetemp.text!)
        if(tempEntered! < 0)
        {
            Imagefield.image = UIImage(named: "snow")
        }
        else if(tempEntered!<=20)
        {
            Imagefield.image = UIImage(named: "cool")
        }
        else{
            Imagefield.image = UIImage(named: "hot")
        }
        
        
        
    }
    
}

