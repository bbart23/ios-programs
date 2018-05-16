//
//  ViewController.swift
//  Calculator
//
//  Created by Brandon Bart on 5/15/18.
//  Copyright © 2018 Bart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var output: UILabel!
    
    @IBAction func b1(_ sender: UIButton) {
        numPress(val: "1")
    }
    @IBAction func b2(_ sender: UIButton) {
        numPress(val: "2")
    }
    @IBAction func b3(_ sender: UIButton) {
        numPress(val: "3")
    }
    @IBAction func b4(_ sender: UIButton) {
        numPress(val: "4")
    }
    @IBAction func b5(_ sender: UIButton) {
        numPress(val: "5")
    }
    @IBAction func b6(_ sender: UIButton) {
        numPress(val: "6")
    }
    @IBAction func b7(_ sender: UIButton) {
        numPress(val: "7")
    }
    @IBAction func b8(_ sender: UIButton) {
        numPress(val: "8")
    }
    @IBAction func b9(_ sender: UIButton) {
        numPress(val: "9")
    }
    @IBAction func b0(_ sender: UIButton) {
        numPress(val: "0")
    }
    @IBAction func bC(_ sender: UIButton) {
        // opPress(sign: "C")
        a = 0; b = 0; op = "0"; output.text = "0"
    }
    @IBAction func bEquals(_ sender: UIButton) {
        opPress(sign: "=")
    }
    @IBAction func bPlus(_ sender: UIButton) {
        opPress(sign: "+")
    }
    @IBAction func bMinus(_ sender: UIButton) {
        opPress(sign: "-")
    }
    @IBAction func bTimes(_ sender: UIButton) {
        opPress(sign: "x")
    }
    @IBAction func bDivide(_ sender: UIButton) {
        opPress(sign: "/")
    }
    
    func numPress(val: String){
        if (output.text == "0") {
            output.text = val
        } else {
            output.text = output.text! + val
        }
    }
    var a:Int? = 0
    var b:Int? = 0
    var op = "0"
    
    func opPress(sign: String) {
        if(sign != "=") {
            op = sign
            if (a == 0){
                a = Int(output.text!)
            }
            output.text = "0"
            
        } else {
            b = Int(output.text!)
            if(op == "+"){
                output.text = String(a! + b!)
            } else if(op == "-") {
                output.text = String(a! - b!)
            } else if (op == "x") {
                output.text = String(a! * b!)
            } else {
                output.text = String(a! / b!)
            }
            a = Int(output.text!)
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

