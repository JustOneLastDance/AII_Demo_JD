//
//  ViewController.swift
//  AII_Proj_JD
//
//  Created by JustinChou on 2022/9/26.
//

import UIKit

class ViewController: AIIBaseViewController {

    override func viewDidLoad() {
        
//        hideNavigationBar = false
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .red
        title = "二级页面"
        
        addNaviBar(.cyan)
    }


}

