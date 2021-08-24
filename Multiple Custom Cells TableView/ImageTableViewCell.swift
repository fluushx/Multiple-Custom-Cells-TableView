//
//  ImageTableViewCell.swift
//  Multiple Custom Cells TableView
//
//  Created by Felipe Ignacio Zapata Riffo on 24-08-21.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    static let identifier = "ImageTableViewCell"
    @IBOutlet var myImageView_:UIImageView!
    
    static func nib()->UINib{
        return UINib(nibName: "ImageTableViewCell", bundle: nil)
    }
    
    public func configure(with imageName:String){
        myImageView_.image = UIImage(named: imageName)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
