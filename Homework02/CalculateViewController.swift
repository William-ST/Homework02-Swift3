//
//  CalculateViewController.swift
//  Homework02
//
//  Created by William Sulca Talavera on 06/02/17.
//  Copyright © 2017 Virtualink inc. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var imageViewResult: UIImageView!
    @IBOutlet weak var labelResult: UILabel!
    
    var result = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("--> calculate: \(result)")
        var image = UIImage(named:"ic_unlike");
        
        if (result > 50) {
            image = UIImage(named:"ic_like")
        }
        
        imageViewResult.image = image
        labelResult.text = "Curso completo al \(result)%"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
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
