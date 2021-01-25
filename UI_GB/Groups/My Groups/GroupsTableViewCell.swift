//
//  GroupsTableViewCell.swift
//  UI_GB
//
//  Created by Артем Балышев on 25.01.2021.
//  Copyright © 2021 Артем Балышев. All rights reserved.
//

import UIKit

class GroupsTableViewCell: UITableViewCell {

    @IBOutlet weak var groupsImageView: UIImageView!
    @IBOutlet weak var groupsLabelView: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func setImageAndText(text: String, image: UIImage) {
        groupsLabelView.text = text
        groupsImageView.image = image
    }

}
