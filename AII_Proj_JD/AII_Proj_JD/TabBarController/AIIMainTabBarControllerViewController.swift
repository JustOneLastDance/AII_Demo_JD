//
//  AIIMainTabBarControllerViewController.swift
//  AII_Proj_JD
//
//  Created by JustinChou on 2022/9/26.
//

import UIKit

/**
 UITabBarController
 底部的item 最多支持显示5个，一旦超过五个，则会显示前4个，最后一个会变成一个叫做“更多”的按钮
 */

class AIIMainTabBarControllerViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initTabBar()
    }
    
    
    func initTabBar() {
        // 如下的vc都是一级页面， tabbar的作用是支持在这些页面之间进行切换
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        homeVC.tabBarItem.title = " 首页"
        
        let categoryVC = UINavigationController(rootViewController: CategoryViewController())
        categoryVC.tabBarItem.title = "分类"
        categoryVC.tabBarItem.image = UIImage(named: "category.png")
        
        let foundVC = UINavigationController(rootViewController: FoundViewController())
        foundVC.tabBarItem.title = "发现"
        
        let cartVC = UINavigationController(rootViewController: CartViewController())
        cartVC.tabBarItem.title = "购物车"
        cartVC.tabBarItem.image = UIImage(named: "cart.png")
        
        let mineVC = UINavigationController(rootViewController: MineViewController())
        mineVC.tabBarItem.title = "我的"
        mineVC.tabBarItem.image = UIImage(named: "mine.png")
        
        viewControllers = [homeVC, categoryVC, foundVC, cartVC, mineVC]
        setTabBarItemAttributes(backgroundColor: UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1))
    }
    
    func setTabBarItemAttributes(fontName: String = "Courier",
                                 fontSize: CGFloat = 14,
                                 normalColor: UIColor = .gray,
                                 selectedColor: UIColor = .red,
                                 backgroundColor: UIColor = .white) {
        // tabBarItem文字的字体和大小
        var attributes: [NSAttributedString.Key: Any] = [.font: UIFont(name: fontName, size: fontSize)!]
        // 默认颜色
        attributes[.foregroundColor] = normalColor
        UITabBarItem.appearance().setTitleTextAttributes(attributes, for: .normal)
        // 选中后颜色
        attributes[.foregroundColor] = selectedColor
        UITabBarItem.appearance().setTitleTextAttributes(attributes, for: .selected)
        
        tabBar.tintColor = selectedColor
        tabBar.barTintColor = backgroundColor
        // isTranslucent 属性 为 true 时会使得 vc 显示到 tabbar 上，反之则不会。
        // 同时 vc 的frame 也会发生变化，为 false时，frame 底部会在 tabbar 的顶部
        tabBar.isTranslucent = false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
