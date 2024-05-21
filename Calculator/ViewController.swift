//
//  ViewController.swift
//  Calculator
//
//  Created by Aidar on 2024-05-20.
//

import UIKit

enum modes {
    case not_set
    case addition
    case subtraction
    case multiplication
}

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var labelString: String = "0"
    var currentMode: modes = .not_set
    var savedNum: Int = 0
    var lastButtonWasMode: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPressPlus(_ sender: Any) {
    }
    
    @IBAction func didPressSubtract(_ sender: Any) {
    }
    
    @IBAction func didPressMultiply(_ sender: Any) {
    }
    
    @IBAction func didPressEquals(_ sender: Any) {
    }
    
    @IBAction func didPressClear(_ sender: Any) {
        
        labelString = "0"
        currentMode = .not_set
        savedNum = 0
        lastButtonWasMode = false
        label.text = "0"
        
    }
    
    @IBAction func didPressNumber(_ sender: UIButton) {
        
        let stringValue: String? = sender.titleLabel?.text
        
        labelString = labelString.appending(stringValue!)
        
        updateText()
        
    }
    
    func updateText() {
        
        guard let labelInt: Int = Int(labelString) else {
            
            return
            
        }
        
        label.text = "\(labelInt)"
        
    }
    
    func changeModes(newMode: modes) {
        
    }


}

