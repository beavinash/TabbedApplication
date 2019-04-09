//
//  CustomTableViewCell.swift
//  TabbedApplication
//
//  Created by Avinash Reddy on 4/9/19.
//  Copyright © 2019 Avinash Reddy. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    
    @IBOutlet weak var transactionTitleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
