//
//  ViewController.swift
//  Image App
//
//  Created by Muttukuri,Navya on 2/21/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var image: UIImageView!
    
    
    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Displayimage(_ sender: UIButton) {
        image.image = UIImage(named: "Mahesh babu")
        Label.text = "Mahesh babu is a famous actor"
    }
    

}

