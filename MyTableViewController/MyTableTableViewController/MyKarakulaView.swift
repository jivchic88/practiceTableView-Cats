//
//  MyKarakulaView.swift
//  MyTableViewController
//
//  Created by Юлия Омельченко on 02.04.2020.
//  Copyright © 2020 Юлия Омельченко. All rights reserved.
//

import UIKit
import SnapKit

class MyKarakulaView: UIView {
    
    let miniView = UIView()
    let label = UILabel()
    
    init(model: KarakulaModel) {
        super.init(frame: .zero)
        
        self.backgroundColor = model.karakulaViewColor
        miniView.backgroundColor = model.squareViewColor
        
        self.addSubview(miniView)
        miniView.snp.makeConstraints{ make in
            make.centerY.centerX.equalToSuperview()
            make.height.width.equalTo(50)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
