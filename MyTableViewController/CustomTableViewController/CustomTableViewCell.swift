//
//  CustomTableViewCell.swift
//  MyTableViewController
//
//  Created by Юлия Омельченко on 02.04.2020.
//  Copyright © 2020 Юлия Омельченко. All rights reserved.
//

import UIKit
import SnapKit

class CustomTableViewCell: UITableViewCell {

    let viewImage = UIImageView()
    
    let labelName = UILabel()
    let labelPosition = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(viewImage)
        viewImage.layer.cornerRadius = 50
        //обрезка лишнего при округлении рисунка
        viewImage.clipsToBounds = true
        
        viewImage.snp.makeConstraints {
            $0.top.left.equalToSuperview().offset(20)
            $0.height.width.equalTo(100)
            $0.bottom.equalToSuperview().offset(-20)
        }
        
        self.addSubview(labelName)
//        labelName.backgroundColor = .black
        labelName.textColor = .white
        labelName.layer.cornerRadius = 5
        // labelName.layer.masksToBounds - позволяет обрезать то, что лишнее при округлении краев labelName
        labelName.layer.masksToBounds = true
        
        labelName.snp.makeConstraints {make in
            make.left.equalTo(viewImage.snp.right).offset(30)
            make.top.equalToSuperview().offset(20)
            make.height.equalTo(40)
            
        }
    
        self.addSubview(labelPosition)
//        labelPosition.backgroundColor = .black
        labelPosition.textColor = .white
        labelPosition.layer.cornerRadius = 5
        labelPosition.layer.masksToBounds = true
        
        labelPosition.snp.makeConstraints{ make in
            make.left.equalTo(viewImage.snp.right).offset(30)
            make.top.equalTo(labelName.snp.bottom).offset(20)
            make.height.equalTo(40)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
