//
//  SimpleTableViewCell.swift
//  Multiple Custom Cells TableView
//
//  Created by Felipe Ignacio Zapata Riffo on 24-08-21.
//

import UIKit

class SimpleTableViewCell: UITableViewCell {
    
  
    
    static let identifier = "SimpleTableViewCell"
    
    static func nib()->UINib{
        return UINib(nibName: "SimpleTableViewCell",
                     bundle: nil)
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
