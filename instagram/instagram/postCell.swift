//
//  postCell.swift
//  instagram
//
//  Created by Shiv Patel on 3/26/22.
//

import UIKit

class postCell: UITableViewCell {

    @IBOutlet weak var postview: UIImageView!
    @IBOutlet weak var captionlabel: UILabel!
    

    
    @IBOutlet weak var usernamelabel: UILabel!
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
