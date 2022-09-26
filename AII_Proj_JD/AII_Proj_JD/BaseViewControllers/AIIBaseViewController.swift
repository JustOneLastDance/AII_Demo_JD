//
//  AIIBaseViewController.swift
//  AII_Proj_JD
//
//  Created by JustinChou on 2022/9/26.
//

/**
 由于需要实现 隐藏tabbar 等必要的功能，需要一个基类来实现，而不是对每个 vc 都进行相同操作。
 */

import UIKit

class AIIBaseViewController: UIViewController {
    // 控制每个vc的navigationbar的显示，一级页面显示， 二级页面不显示
    var hideNavigationBar = false

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    // 控制每个vc的navigationbar的显示，一级页面显示， 二级页面不显示
    open func resetNavigationBar() {
        navigationController?.navigationBar.isHidden = hideNavigationBar
    }

}
