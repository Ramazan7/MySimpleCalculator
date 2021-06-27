//
//  ViewController.swift
//  MySimpleCalculator
//
//  Created by Admin on 12.06.2021.
//

import UIKit

class ViewController: UIViewController {

    var firstNumbers = 0.0
    var selectOperation = ""
    var pointNumbers = false
    @IBOutlet weak var helpLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func digits(_ sender: UIButton) {
        if(resultLabel.text!.count == 10){
             return
        }
        guard (resultLabel.text != "0") else{
        resultLabel.text = String(sender.tag)
            return
        }
        
        resultLabel.text = resultLabel.text! + String(sender.tag)
    }
    
    
    @IBAction func buttonPoint(_ sender: UIButton) {
        if(pointNumbers == false){
            resultLabel.text = resultLabel.text! + "."
            pointNumbers = true
            return
        }
    }
    
    @IBAction func operation(_ sender: UIButton) {
        var resultmath = 0.0
        
        
        guard(sender.tag != 10) else{
            resultLabel.text = "0"
            helpLabel.text = ""
            pointNumbers = false
            return
        }
        
        if(sender.tag == 11){
            selectOperation = "*"
            firstNumbers = Double(resultLabel.text!)!
            helpLabel.text = String(firstNumbers) + " " + selectOperation
            resultLabel.text = "0"
        }
        if(sender.tag == 12){
            selectOperation = "/"
            firstNumbers = Double(resultLabel.text!)!
            helpLabel.text = String(firstNumbers) + " " + selectOperation
            resultLabel.text = "0"
        }
        if(sender.tag == 13){
            selectOperation = "+"
            firstNumbers = Double(resultLabel.text!)!
            helpLabel.text = String(firstNumbers) + " " + selectOperation
            resultLabel.text = "0"
        }
        if(sender.tag == 14){
            selectOperation = "-"
            firstNumbers = Double(resultLabel.text!)!
            helpLabel.text = String(firstNumbers) + " " + selectOperation
            resultLabel.text = "0"
        }
        if(sender.tag == 15){
            guard (resultLabel.text != "0") else{
                return
            }
            resultmath = 0.0
            if(selectOperation == "*"){ resultmath = firstNumbers * Double(resultLabel.text!)! }
            if(selectOperation == "/"){ resultmath = firstNumbers / Double(resultLabel.text!)! }
            if(selectOperation == "+"){ resultmath = firstNumbers + Double(resultLabel.text!)! }
            if(selectOperation == "-"){ resultmath = firstNumbers - Double(resultLabel.text!)! }
            
            helpLabel.text = helpLabel.text! + " " + resultLabel.text!
            resultLabel.text = String(resultmath)
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //off dark mode
        if #available(iOS 13.0, *) {
               // Always adopt a light interface style.
               overrideUserInterfaceStyle = .light
           }
        // Do any additional setup after loading the view.
    }


}

