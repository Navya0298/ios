//
//  ResultViewController.swift
//  Muttukuri_MVCApp
//
//  Created by Muttukuri,Navya on 4/4/23.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var DisplayLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var ClickMebtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func ClickMe(_ sender: Any) {
        
        imageView.image = UIImage(named: "roses")
        DisplayLabel.text = "Hi,Navya welcome to your account"
        ClickMebtn.isHidden = true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
