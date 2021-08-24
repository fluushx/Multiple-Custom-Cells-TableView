//
//  CodedTableViewCell.swift
//  Multiple Custom Cells TableView
//
//  Created by Felipe Ignacio Zapata Riffo on 24-08-21.
//

import UIKit

class CodedTableViewCell: UITableViewCell {
    
    static let identifier = "CodedTableViewCell"
    public func nib () ->UINib{
        
        return UINib(nibName: "CodedTableViewCell",
                     bundle: nil)
    }
    
    private let myLable: UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        label.tintColor = .black
        label.backgroundColor = .green
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
        
        return label
    }()
    
    private let myImageView: UIImageView = {
       let myImageView = UIImageView()
        myImageView.contentMode = .scaleAspectFit
        myImageView.layer.masksToBounds = true
        myImageView.layer.cornerRadius = 10
         
        return myImageView
    }()

    public func configure(){
        contentView.addSubview(myLable)
        contentView.addSubview(myImageView)
        myLable.text = "custom cell"
        myImageView.image = UIImage(named: "image2")
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
         setUpView()
        addSubview(myImageView)
        myLable.translatesAutoresizingMaskIntoConstraints = false
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func setUpView (){
        myImageView.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive = true
        myImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        myImageView.widthAnchor.constraint(lessThanOrEqualToConstant: contentView.frame.size.width-300).isActive = true
        myImageView.heightAnchor.constraint(lessThanOrEqualToConstant: contentView.frame.size.height).isActive = true
        myImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
        myLable.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        myLable.leadingAnchor.constraint(equalTo: myImageView.trailingAnchor, constant: 20).isActive = true
        myLable.widthAnchor.constraint(equalToConstant: contentView.frame.size.width-150).isActive = true
        myLable.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
    }

}
