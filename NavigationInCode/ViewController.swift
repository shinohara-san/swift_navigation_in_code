//
//  ViewController.swift
//  NavigationInCode
//
//  Created by Yuki Shinohara on 2020/09/04.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let button:UIButton = {
        let button = UIButton()
        button.setTitle("Go to Navigation Controller", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBlue
        view.addSubview(button)
        button.addTarget(self,
                         action: #selector(didTapButton),
                         for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        button.frame = CGRect(x: 0, y: 0, width: 260, height: 50)
        button.center = view.center
    }
    
    @objc private func didTapButton () {
        //下から表示
        let vc = SecondViewController()
        let navVC = UINavigationController(rootViewController: vc)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true)
    }
}

