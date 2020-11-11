//
//  MyKarakulaViewController.swift
//  MyTableViewController
//
//  Created by Юлия Омельченко on 02.04.2020.
//  Copyright © 2020 Юлия Омельченко. All rights reserved.
//

import UIKit
import SnapKit

class MyKarakulaViewController: UIViewController {

    var model: KarakulaModel
    
    init(model: KarakulaModel) {
        self.model = model
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        let karakulaView = MyKarakulaView(model: model)
        self.view.backgroundColor = .white
        
        self.view.addSubview(karakulaView)
        karakulaView.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
            make.bottom.equalTo(self.view.snp.centerY)
        }
    }
    
}
