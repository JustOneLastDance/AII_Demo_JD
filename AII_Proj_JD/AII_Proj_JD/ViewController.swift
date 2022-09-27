//
//  ViewController.swift
//  AII_Proj_JD
//
//  Created by JustinChou on 2022/9/26.
//

import UIKit

class ViewController: AIIBaseViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        view.backgroundColor = .red
        title = "二级页面"
        
        addNaviBar(.cyan)
    }
    
    override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()
        let area = UIView(frame: view.safeAreaLayoutGuide.layoutFrame)
        area.backgroundColor = UIColor(colorHex: 0x007F7F)
        view.addSubview(area)
        
    }

}

