//
//  HomeViewController.swift
//  AII_Proj_JD
//
//  Created by JustinChou on 2022/9/26.
//

import UIKit

class HomeViewController: AIIBaseViewController {

    override func viewDidLoad() {
        
        hideNavigationBar = true
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        title = "首页"
        
        view.backgroundColor = .green
        
        let label = UILabel(frame: CGRect.zero)
        label.text = "HomeViewController"
        // 将frame布局转换成约束布局
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        label.isUserInteractionEnabled = true
        label.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap)))
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        // 和 tabbar 设置原理相同
        navigationController?.navigationBar.isTranslucent = false
    }
    
    @objc func tap() {
        navigationController?.pushViewController(ViewController(), animated: true)
    }

}
