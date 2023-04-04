//
//  ViewController.swift
//  Muttukuri_CalculatorApp
//
//  Created by Muttukuri,Navya on 2/15/23.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var Resultoutlet: UILabel!
    var oper1 = ""
    var oper2 = ""
    var res = ""
    var opera = ""
    var aopera = false
    var copera = ""
    var mo = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func num(_ number:String){
        if Resultoutlet.text == "0"{
            Resultoutlet.text = ""
        }
        if !aopera{
            Resultoutlet.text! += number
            oper1 += number
        }else{
            print(mo)
            if !mo {
                Resultoutlet.text! += number
                oper2 += number
        }else {
            Resultoutlet.text = ""
            Resultoutlet.text! += number
            oper2 += number
        }
    }
    }
    @IBAction func Number7(_ sender: UIButton) {
        num("7")
    }
    
    @IBAction func Number8(_ sender: UIButton) {
        num("8")
    }
    
    @IBAction func Number9(_ sender: UIButton) {
        num("9")
    }
    
    @IBAction func Number4(_ sender: UIButton) {
        num("4")
    }
    
    @IBAction func Number5(_ sender: UIButton) {
        num("5")
    }
    
    @IBAction func Number6(_ sender: UIButton) {
        num("6")
    }
    
    @IBAction func Number1(_ sender: UIButton) {
        num("1")
    }
    
    @IBAction func Number2(_ sender: UIButton) {
        num("2")
    }
    
    @IBAction func Number3(_ sender: UIButton) {
        num("3")
    }
    
    @IBAction func Number0(_ sender: UIButton) {
        num("0")
    }
    
    @IBAction func DotButton(_ sender: UIButton) {
        num(".")
    }
    
    func clear(){
        oper2 = ""
        oper1 = ""
        aopera = false
        opera = ""
        copera = ""
        Resultoutlet.text = "0"
        mo = false
    }
    @IBAction func ACButton(_ sender: UIButton) {
        clear()
    }
    func back(){
        if(!Resultoutlet.text!.isEmpty && !aopera){
            Resultoutlet.text!.removeLast()
            oper1 = Resultoutlet.text!
        }else{
            Resultoutlet.text!.removeLast()
            oper2 = Resultoutlet.text!
        }
    }
    @IBAction func CButton(_ sender: UIButton) {
        back()
    }
    func operation(){
        if oper1 == ""{
            Resultoutlet.text = "-" + Resultoutlet.text!
            oper1 = "\(Resultoutlet.text!)"
        }
        else{
            Resultoutlet.text = "-" + Resultoutlet.text!
            oper2 = "\(Resultoutlet.text!)"
        }
    }
    @IBAction func ASButton(_ sender: UIButton) {
        operation()
    }
    
    func allOperation(_ operation: String)->String {
        print("\(oper1),\(oper2)")
        if oper1 != "" && oper2 != "" {
            if opera == "+"{
                oper1 = String(Double(oper1)! + Double(oper2)!)
                copera = oper2
                oper2 = ""
                return String(oper1)
            }
            if opera == "-"{
                oper1 = String(Double(oper1)! - Double(oper2)!)
                copera = oper2
                oper2 = ""
                return String(oper1)
            }
            if opera == "*"{
                oper1 = String(Double(oper1)! * Double(oper2)!)
                copera = oper2
                oper2 = ""
                return String(oper1)
            }
            if opera == "/"{
                oper1 = String(Double(oper1)! / Double(oper2)!)
                copera = oper2
                oper2 = ""
                return String(oper1)
            }
            if opera == "%"{
                let m1 = Double(oper1)!
                let m2 = Double(oper2)!
                var s = m1.remainder(dividingBy: m2)
                oper1 = String(s)
                copera = oper2
                oper2 = ""
                return String(oper1)
            }
        }
        return ""
    }
    
    func fresult(_ res:String)->String{
        let v = Double(res)!
        var ress = String(round(v*100000)/100000.0)
        if ress.contains(".0"){
            ress.removeSubrange(ress.index(ress.endIndex,offsetBy: -2)..<ress.endIndex)
        }
        return ress
    }
    
    @IBAction func DivButton(_ sender: UIButton) {
        let t = allOperation(opera)
        opera = "/"
        Resultoutlet.text = (t != "") ? fresult(t) : ""
        if t != "" {
            if oper2 != "" {
                mo = true
                copera = oper2;
                if aopera{
                    res = String(Double(t)! / Double(oper2)!)
                    print(res)
                    if res == "inf"{
                        Resultoutlet.text! = "Not a number"
                    }else{
                        Resultoutlet.text! = fresult(res)
                    }
                }
            }
        }
        aopera = true
    }
    
    @IBAction func MultButton(_ sender: UIButton) {
        let t = allOperation(opera)
        opera = "*"
        copera = ""
        Resultoutlet.text = (t != "") ? fresult(t) : ""
        aopera = true
    }
    
    @IBAction func SubButton(_ sender: UIButton) {
        let t = allOperation(opera)
        opera = "-"
        Resultoutlet.text = (t != "") ? fresult(t) : ""
        if t != "" {
            if oper2 != ""{
                mo = true
                copera = oper2;
                if aopera{
                    res = String(Double(t)! - Double(oper2)!)
                    Resultoutlet.text! = fresult(res)
                }
            }
        }
        aopera = true
    }
    
    
    @IBAction func AddButton(_ sender: UIButton) {
        let t = allOperation(opera);
        print("t is \(t)")
        opera = "+"
        copera = ""
        Resultoutlet.text = (t != "") ? fresult(t) : ""
        aopera = true
        
    }
    
    @IBAction func ModuleButton(_ sender: UIButton) {
        let t = allOperation(opera)
        print("t is \(t)")
        opera = "%"
        copera = ""
        Resultoutlet.text = (t != "") ? fresult(t) : ""
        aopera = true
    }
    
    
    
    @IBAction func EqualButton(_ sender: UIButton) {
        print("res : \(Resultoutlet.text!)")
         var out = ""
        switch opera {
        case "+" :
            if copera != "" {
                out = String(Double(oper1)! + Double(copera)!)
                Resultoutlet.text = fresult(out)
                oper2 = copera
            } else{
                print(copera)
                out = String(Double(oper1)! + Double(oper2)!)
                Resultoutlet.text = fresult(out)
            }
            oper1 = out
            break
        case "*" :
            if copera != "" {
                out = String(Double(oper1)! * Double(copera)!)
                Resultoutlet.text = fresult(out)
                oper2 = copera
            } else{
                print(copera)
                out = String(Double(oper1)! * Double(oper2)!)
                Resultoutlet.text = fresult(out)
            }
            oper1 = out
            break
        case "-" :
            if copera != "" {
                out = String(Double(oper1)! - Double(copera)!)
                Resultoutlet.text = fresult(out)
                oper2 = copera
            } else{
                print(copera)
                out = String(Double(oper1)! - Double(oper2)!)
                Resultoutlet.text = fresult(out)
            }
            oper1 = out
            break
        case "/" :
            if Resultoutlet.text == "Error" {
                clear()
            }else{
            if copera != "" {
                out = String(Double(oper1)! / Double(copera)!)
                if out == "inf"{
                Resultoutlet.text! = "Not a number"
                    return
            }else{
                Resultoutlet.text = fresult(out)
            }
            }else{
                out = String(Double(oper1)! / Double(oper2)!)
                if out == "inf"{
                    Resultoutlet.text! = "Not a number"
                    return
                }else{
                    Resultoutlet.text = fresult(out)
                }
            }
            oper1 = out
            break
            }

        case "%" :  if Resultoutlet.text == "Error" {
                clear()
            }else{
            if copera != "" {
                //out = String(Double(oper1)! % Double(copera)!)
                out = String((Double(oper1)?.truncatingRemainder(dividingBy: Double(copera)!))!)
                if out == "inf"{
                Resultoutlet.text! = "Not a number"
                    return
            }else{
                Resultoutlet.text = fresult(out)
            }
            }else{
                //out = String(Double(oper1)! % Double(oper2)!)
                out = String((Double(oper1)?.truncatingRemainder(dividingBy: Double(oper2)!))!)
                if out == "inf"{
                    Resultoutlet.text! = "Not a number"
                    return
                }else{
                    Resultoutlet.text = fresult(out)
                }
            }
            }
            oper1 = out
        default:
            Resultoutlet.text = Resultoutlet.text!
        
    }
    
}

}
