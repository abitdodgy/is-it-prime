//
//  ViewController.swift
//  Is it Prime
//
//  Created by Mohamad El-Husseini on 07/10/2014.
//  Copyright (c) 2014 Aerogami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberField: UITextField!

    @IBOutlet var result: UILabel!

    @IBAction func buttonPressed(sender: AnyObject) {
        var integer = numberField.text.toInt()

        var isPrime = true
        
        if integer != nil {

            if integer < 1 {
                result.text = "Please enter a positive..."
            } else if integer == 1 {
                result.text = "1 is not prime..."
            } else {
                
                for var i = 2; i < integer; i++ {
                    if integer! % i == 0 {
                        isPrime = false
                        break;
                    }
                }

                if isPrime {
                    result.text = "\(integer!) IS PRIME..."
                } else {
                    result.text = "\(integer!) is not prime..."
                }
            }

        } else {
            result.text = "Please enter a number..."
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
