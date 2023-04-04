//
//  ViewController.swift
//  Muttukuri_SearchApp
//  Created by Muttukuri,Navya on 3/18/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
  
    @IBOutlet weak var SearchButton: UIButton!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var prevbtn: UIButton!
    
    @IBOutlet weak var resetbtn: UIButton!
    
    @IBOutlet weak var nextbtn: UIButton!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    var arr = [["soundarya","deepika","mahesh","venkatesh","dhanush"],["dog","pig","cat","fox","rabbit"],["roses","tulips","snapdragon","jardinjasmin","waxflower"]]
    
   var actor = ["soundarya","deepika","mahesh","venkatesh","dhanush"]
    
    var animal = ["dog","pig","cat","fox","rabbit"]
    
    var flower = ["roses","tulips","snapdragon","jardinjasmin","waxflower"]
    
    var Total = 0
    
    var explanations = [
         ["She was regarded as one of the greatest actresses in the history of Telugu Cinema and superstar Mahanati Savitri."," born 5 January 1986 She is one of the highest-paid actresses in India, and her accolades include three Filmfare Awards.","born 9 August 1975 is an Indian actor, producer, media personality, and philanthropist who works mainly in Telugu cinema.","born 13 December 1960 is an Indian actor known for his works predominantly in Telugu cinema, and few Hindi language films.","born 28 July 1983 known professionally as Dhanush, is an Indian actor, producer, director, lyricist and playback singer who predominantly works in Tamil cinema"],["dog is a domesticated descendant of the wolf. Also called the domestic dog, it is derived from the extinct Pleistocene wolf,and the modern wolf is the dog's nearest living relative.","The pig often called swine, hog, or domestic pig when distinguishing from other members of the genus Sus, is an omnivorous, domesticated, even-toed, hoofed mammal.","cat is a domestic species of small carnivorous mammal. It is the only domesticated species in the family Felidae and is commonly referred to as the domestic cat or house cat to distinguish it from the wild members of the family.","Fox are small to medium-sized, omnivorous mammals belonging to several genera of the family Canidae. They have a flattened skull, upright, triangular ears, a pointed, slightly upturned snout, and a long bushy tail","rabbit also known as bunnies or bunny rabbits, are small mammals in the family Leporidae of the order Lagomorpha. Oryctolagus cuniculus includes the European rabbit species and its descendants, the world's 305 breeds of domestic rabbit"],["A rose is either a woody perennial flowering plant of the genus Rosa in the family Rosaceae or the flower it bears. There are over three hundred species and tens of thousands of cultivars","Tulips normally begin emerging from the ground in late winter or early spring. If unseasonably mild weather causes premature growth in winter, the danger is not as great as it may seem. Tulips are quite cold tolerant.","Antirrhinum is a genus of plants commonly known as dragon flowers, snapdragons and dog flower because of the flowers' fancied resemblance to the face of a dragon that opens and closes its mouth when laterally squeezed.","Jasmin also Jasminum; /ˈjæsmɪnəm/ is a genus of shrubs and vines in the olive family . It contains around 200 species native to tropical and warm temperate regions of Eurasia, Africa, and Oceania.","Chamelaucium, also known as waxflower, is a genus of shrubs endemic to south western Western Australia. They belong to the myrtle family Myrtaceae and have flowers similar to those of the tea-trees"]]
    
    var add = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        resultImage.image = UIImage(named: "welcome")
        
        prevbtn.isHidden = true
        nextbtn.isHidden = true
        SearchButton.isEnabled = false
        resetbtn.isHidden = true
        
     
    }
    
    @IBAction func Input(_ sender: Any) {
    SearchButton.isEnabled = true
       /* if searchTextField.text != ""{
            prevbtn.isHidden = false
            nextbtn.isHidden = false
            resetbtn.isHidden = false
        }*/
    }

    @IBAction func searchButtonAction(_ sender: Any) {
    let value = searchTextField.text!
        if(actor.contains(value)){
            resultImage.image = UIImage(named: arr[0][0])
            topicInfoText.text = explanations[0][0]
            prevbtn.isHidden = false
            nextbtn.isHidden = false
            resetbtn.isHidden = false
            nextbtn.isEnabled = true
            resetbtn.isEnabled = true
            prevbtn.isEnabled = false
            add = 1
            Total = 0
        }
        else if (animal.contains(value)){
            resultImage.image = UIImage(named: arr[1][0])
            topicInfoText.text = explanations[1][0]
            prevbtn.isHidden = false
            nextbtn.isHidden = false
            resetbtn.isHidden = false
            nextbtn.isEnabled = true
            resetbtn.isEnabled = true
            prevbtn.isEnabled = false
            add = 2
            Total = 0
        }
        else if (flower.contains(value)){
            resultImage.image = UIImage(named: arr[2][0])
            topicInfoText.text = explanations[2][0]
            prevbtn.isHidden = false
            nextbtn.isHidden = false
            resetbtn.isHidden = false
            nextbtn.isEnabled = true
            resetbtn.isEnabled = true
            prevbtn.isEnabled = false
            add = 3
            Total = 0
        }
        else{
            resultImage.image = UIImage(named: "notfound")
            prevbtn.isHidden = true
            nextbtn.isHidden = true
            resetbtn.isHidden = true
            SearchButton.isHidden = false
        }
        
    }

    @IBAction func ShowPrevImagesBtn(_ sender: Any) {
        if(add == 1){
            Total -= 1
            resultImage.image = UIImage(named: arr[0][Total])
            topicInfoText.text = explanations[0][Total]
            prevbtn.isEnabled = true
            resetbtn.isEnabled = true
            if(Total == 0){
                prevbtn.isEnabled = false
            }
        }
        if(add == 2){
            Total -= 1
            resultImage.image = UIImage(named: arr[1][Total])
            topicInfoText.text = explanations[1][Total]
            prevbtn.isEnabled = true
            resetbtn.isEnabled = true
            if(Total == 0){
                prevbtn.isEnabled = false
            }
        }
        if(add == 3){
            Total -= 1
            resultImage.image = UIImage(named: arr[2][Total])
            topicInfoText.text = explanations[2][Total]
            prevbtn.isEnabled = true
            resetbtn.isEnabled = true
            if(Total == 0){
                prevbtn.isEnabled = false
            }
        }
    }

    @IBAction func ResetBtn(_ sender: Any) {
    resultImage.image = UIImage(named: "welcome")
        topicInfoText.text = ""
        if resetbtn.tag == 1{
        prevbtn.isHidden = true
        nextbtn.isHidden = true
        resetbtn.isHidden = true
        SearchButton.isEnabled = false
            searchTextField.text = ""
        }
        
    }
    
    @IBAction func ShowNextImagesBtn(_ sender: Any) {
    if(add == 1){
            Total += 1
           resultImage.image = UIImage(named: arr[0][Total])
           topicInfoText.text = explanations[0][Total]
            prevbtn.isEnabled = true
        resetbtn.isEnabled = true
            if(Total == 4){
                nextbtn.isEnabled = false
            }
        }
            if(add == 2){
                Total += 1
                resultImage.image = UIImage(named: arr[1][Total])
                topicInfoText.text = explanations[1][Total]
                prevbtn.isEnabled = true
                resetbtn.isEnabled = true
                if(Total == 4){
                    nextbtn.isEnabled = false
                }
        }
        if(add == 3){
            Total += 1
            resultImage.image = UIImage(named: arr[2][Total])
            topicInfoText.text = explanations[2][Total]
            prevbtn.isEnabled = true
            resetbtn.isEnabled = true
            if(Total == 4){
                nextbtn.isEnabled = false
            }
    }
    }
}
