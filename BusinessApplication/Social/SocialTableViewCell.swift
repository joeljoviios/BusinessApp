//
//  SocialTableViewCell.swift
//  BusinessApplication
//
//  Created by Joel on 21/10/21.
//  Copyright © 2021 LBrands. All rights reserved.
//

import UIKit

class SocialTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellTitle: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
