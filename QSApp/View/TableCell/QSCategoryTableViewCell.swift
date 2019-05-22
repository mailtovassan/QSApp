//
//  QSCategoryTableViewCell.swift
//  QSApp
//
//  Created by M@hesh on 18/05/19.
//  Copyright © 2019 Nua Transmedia. All rights reserved.
//

import UIKit

class QSCategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var lblCategoryName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configuration(categories:QSCategoryModel)  {
        
        if let labelName = categories.title{
            self.lblCategoryName.text = labelName
        }
    }

}
