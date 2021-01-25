//
//  FriendTableViewCell.swift
//  UI_GB
//
//  Created by Артем Балышев on 25.01.2021.
//  Copyright © 2021 Артем Балышев. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

    @IBOutlet weak var friendLabel: UILabel!
    @IBOutlet weak var friendImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    public func setTextAndImageCell(text: String, image: UIImage) {
        friendLabel.text = text
        friendImageView.image = image
    }

}
