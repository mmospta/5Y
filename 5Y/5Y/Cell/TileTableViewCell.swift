//
//  TileTableViewCell.swift
//  5Y
//
//  Created by Phonthep Aungkanukulwit on 22/6/2565 BE.
//

import UIKit

class TileTableViewCell: UITableViewCell {
  @IBOutlet private weak var tileImage: UIImageView!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
  func setupUI(imageName: String) {
    tileImage.image = UIImage(named: imageName)
  }
    
}
