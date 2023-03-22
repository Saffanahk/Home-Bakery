//
//  TableViewCell.swift
//  FixTableError
//
//  Created by Saffanah Alkhathlan on 27/08/1444 AH.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var courseImge: UIImageView!
    @IBOutlet weak var courseName: UILabel!
    @IBOutlet weak var courseLevel: UILabel!
    @IBOutlet weak var courseTime: UILabel!
    @IBOutlet weak var courseDate: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        courseLevel.backgroundColor = UIColor(named: "Cream")
        courseLevel.layer.masksToBounds = true
        courseLevel.layer.cornerRadius = 10

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
