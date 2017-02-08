//
//  ShowTextViewController.swift
//  Homework02
//
//  Created by William Sulca Talavera on 07/02/17.
//  Copyright © 2017 Virtualink inc. All rights reserved.
//

import UIKit

class ShowTextViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelText.text = text
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
