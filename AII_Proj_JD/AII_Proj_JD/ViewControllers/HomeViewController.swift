//
//  HomeViewController.swift
//  AII_Proj_JD
//
//  Created by JustinChou on 2022/9/26.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .green
        
        let label = UILabel(frame: CGRect.zero)
        label.text = "HomeViewController"
        // 将frame布局转换成约束布局
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

}
