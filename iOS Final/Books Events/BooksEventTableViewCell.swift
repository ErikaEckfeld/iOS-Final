//
//  BooksEventTableViewCell.swift
//  Books Events
//
//  Created by Erika Eckfeld on 12/3/19.
//  Copyright © 2019 Erika Eckfeld. All rights reserved.
//

import UIKit

class BooksEventTableViewCell: UITableViewCell {
    @IBOutlet weak var bookIconImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
