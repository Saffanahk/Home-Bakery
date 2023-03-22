//
//  coursdetailsvc.swift
//  nano2
//
//  Created by alaa.alsulaiman on 27/08/1444 AH.
//

import UIKit

class coursdetailsvc: UIViewController {
    
    @IBOutlet var img: UIImageView!
    
    @IBOutlet var chef: UILabel!
    
    @IBOutlet var duration: UILabel!
    
    @IBOutlet var time: UILabel!
    
    @IBOutlet var loc: UILabel!
    
    @IBOutlet var level: UILabel!
    
    
    var coursImage = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        img.image = coursImage
        
        
    }
    

   
    @IBAction func pop(_ sender: Any) {
        let popover = UIStoryboard(name:"Main", bundle: nil).instantiateViewController(withIdentifier: "popupid")as! popupViewController
        self.addChild(popover)
        popover.view.frame = self.view.frame
        self.view.addSubview(popover.view)
        popover.didMove(toParent: self)
    }
    
}
