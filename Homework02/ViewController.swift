//
//  ViewController.swift
//  Homework02
//
//  Created by William Sulca Talavera on 03/02/17.
//  Copyright © 2017 Virtualink inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchMod1: UISwitch!
    @IBOutlet weak var switchMod2: UISwitch!
    @IBOutlet weak var switchMod3: UISwitch!
    
    var calculate = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionCalculate(_ sender: UIButton) {
        let total = 3.0
        var countOn = 0.0
        
        if (switchMod1.isOn) {
            countOn = countOn+1;
        }
        
        if (switchMod2.isOn) {
            countOn = countOn+1;
        }
        
        if (switchMod3.isOn) {
            countOn = countOn+1;
        }
        
        print("total: \(total)")
        print("countOn: \(countOn)")
        
        calculate = countOn/total * 100
        
        self.performSegue(withIdentifier: "nextCalculate", sender: self)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextViewController = segue.destination as? CalculateViewController {
            print("calculate: \(calculate)")
            nextViewController.result = calculate
        }
    }

}

