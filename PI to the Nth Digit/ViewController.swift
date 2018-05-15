//
//  ViewController.swift
//  Exercises
//
//  Created by Brandon Bart on 5/14/18.
//  Copyright © 2018 Bart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var piLabel: UILabel!
    
    @IBAction func stepper(_ sender: UIStepper) {
        
        label.text = String(Int(sender.value))
        if (sender.value == 0){
            piLabel.text = "3"
        } else {
        let digits = floor((Double.pi)*(pow(10.0,sender.value)))
        piLabel.text = String((digits/pow(10.0,Double(sender.value))))
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

