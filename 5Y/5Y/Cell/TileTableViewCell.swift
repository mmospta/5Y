//
//  TileTableViewCell.swift
//  5Y
//
//  Created by Phonthep Aungkanukulwit on 22/6/2565 BE.
//

import UIKit

class TileTableViewCell: UITableViewCell {
  @IBOutlet private weak var tileImage: UIImageView!
  @IBOutlet private weak var topView: UIView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    let gradientLayer = CAGradientLayer()
    gradientLayer.frame = self.contentView.bounds
    gradientLayer.colors = [UIColor(red: 1, green: 1, blue: 1, alpha: 0), UIColor.black.cgColor]
    gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.5)
    gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
    self.topView.layer.insertSublayer(gradientLayer, at: 0)
    self.topView.layer.cornerRadius = 8
    self.topView.layer.masksToBounds = true
    
    
    
    
  }
  
  
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
  
  func setupUI(imageName: String) {
    tileImage.image = UIImage(named: imageName)
  }
  
}
