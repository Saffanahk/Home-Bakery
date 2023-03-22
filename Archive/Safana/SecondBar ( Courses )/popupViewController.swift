//
//  popupViewController.swift
//  nano2
//
//  Created by alaa.alsulaiman on 29/08/1444 AH.
//

import UIKit

class popupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)

       
    }
    
    @IBAction func close(_ sender: UIButton) {
        self.view.removeFromSuperview()
        
    }
    
   

}
