//
//  AIIMainTabBarControllerViewController.swift
//  AII_Proj_JD
//
//  Created by JustinChou on 2022/9/26.
//

import UIKit

class AIIMainTabBarControllerViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initTabBar()
    }
    
    
    func initTabBar() {
        let homeVC = HomeViewController()
        homeVC.tabBarItem.title = " 首页"
        
        let categoryVC = CategoryViewController()
        categoryVC.tabBarItem.title = "分类"
        categoryVC.tabBarItem.image = UIImage(named: "category.png")
        
        let foundVC = FoundViewController()
        foundVC.tabBarItem.title = "发现"
        
        let cartVC = CategoryViewController()
        cartVC.tabBarItem.title = "购物车"
        cartVC.tabBarItem.image = UIImage(named: "cart.png")
        
        let mineVC = MineViewController()
        mineVC.tabBarItem.title = "我的"
        mineVC.tabBarItem.image = UIImage(named: "mine.png")
        
        viewControllers = [homeVC, cartVC, foundVC, cartVC, mineVC]
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
