//
//  ThirdViewController.swift
//  NavigationInCode
//
//  Created by Yuki Shinohara on 2020/09/04.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    let label: UILabel = {
       let label = UILabel()
        label.text = "ああああ"
        label.textAlignment = .center
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .yellow
        view.addSubview(label)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        label.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 40)
        label.center = view.center
    }

}
