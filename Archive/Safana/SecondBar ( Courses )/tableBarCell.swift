//
//  tableBarCell.swift
//  Safana
//
//  Created by Saffanah Alkhathlan on 28/08/1444 AH.
//

import UIKit

class tableBarCell: UITableViewCell {

    @IBOutlet weak var nameBarCell: UILabel!
    
    @IBOutlet weak var dateBarCell: UILabel!
    
    @IBOutlet weak var imgBarCell: UIImageView!
    
    @IBOutlet weak var timeBarCell: UILabel!
    
    @IBOutlet weak var levelBarCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
