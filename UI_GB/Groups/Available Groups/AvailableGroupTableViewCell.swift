//
//  AvailableGroupTableViewCell.swift
//  UI_GB
//
//  Created by Артем Балышев on 25.01.2021.
//  Copyright © 2021 Артем Балышев. All rights reserved.
//

import UIKit

class AvailableGroupTableViewCell: UITableViewCell {

    @IBOutlet weak var groupImageView: UIImageView!
    @IBOutlet weak var groupLabelView: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    public func setImageAndText(text: String, image: UIImage) {
        groupLabelView.text = text
        groupImageView.image = image
    }
}
