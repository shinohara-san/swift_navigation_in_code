//
//  SecondViewController.swift
//  NavigationInCode
//
//  Created by Yuki Shinohara on 2020/09/04.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let button:UIButton = {
        let button = UIButton()
        button.setTitle("Go to Another Controller", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        title = "Welcome"
        view.addSubview(button)
        button.addTarget(self,
                         action: #selector(didTapButton),
                         for: .touchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Dismiss",
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(dismissSelf))
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.frame = CGRect(x: 0, y: 0, width: 260, height: 50)
        button.center = view.center
    }
    
    @objc private func didTapButton () {
        let vc = ThirdViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func dismissSelf(){
        dismiss(animated: true, completion: nil)
    }
    
}
