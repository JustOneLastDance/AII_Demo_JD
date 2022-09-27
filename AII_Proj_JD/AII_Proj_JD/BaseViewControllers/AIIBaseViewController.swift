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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 设置导航栏背景为透明色图片： UIImage() 就是一个透明色图片 -- 实现一个完美的导航控制栏
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        // 设置导航栏阴影为透明色图片
        navigationController?.navigationBar.shadowImage = UIImage()
        
        /// 如果所有的 ChildViewController 都继承于 BaseViewController，且想在 viewDidLoad 中统一设置导航栏的『左按钮』，
        /// 那么，只能设置 backBarButtonItem ，而不能设置 leftBarButtonItem，原因如下：
        ///
        /// previousVC 是上一个页面，nextVC 是下一个页面，当发生 push 时，有如下规则：
        /// 1、如果 nextVC 的 leftBarButtonItem != nil，那么将在 navigationBar 的左边显示 nextVC 指定的 leftBarButtonItem；
        /// 2、如果 nextVC 的 leftBarButtonItem == nil，previousVC 的 backBarButtonItem != nil，那么将在 navigationBar 的左边显示 previousVC 指定的 backBarButtonItem；
        /// 3、如果两者都为 nil 则：
        ///   3.1、nextVC 的 navigationItem.hidesBackButton = YES，那么 navigationBar 将隐藏左侧按钮；
        ///   3.2、否则 navigationBar的左边将显示系统提供的默认返回按钮；
        ///
        /// 我们从以上规则中发现：
        /// 1、leftBarButtonItem 的优先级比 backBarButtonItem 要高；
        /// 2、backBarButtonItem 是来自上一个页面，如果当前 VC 是第一个页面，那么它没有上一个页面，也就没有 backBarButtonItem；
        /// 3、leftBarButtonItem 是来自当前页面，与上个页面无关，因此，如果当前 VC 是第一个页面，那么设置了 leftBarButtonItem 就会很奇怪；
        
//        navigationItem.backBarButtonItem = UIBarButtonItem.init(title: "Back", image: UIImage(), primaryAction: nil, menu: nil)
        
        // 只要返回的箭头，不要文字: 设置image为UIImage(), 因为 image 的优先级比文字高
        navigationItem.backBarButtonItem = UIBarButtonItem.init(title: "Back", image: UIImage(), primaryAction: nil, menu: nil)
        
        navigationItem.backBarButtonItem?.tintColor = .black
    }
    
    
    /// 添加自定义导航栏背景
    /// - Parameter color: 背景颜色
    func addNaviBar(_ color: UIColor) {
        let size = CGSize(width: view.bounds.width, height: 91)
        let image = createImage(size: size, color: color)
        let naviBarImageView = UIImageView(image: image)
        view.addSubview(naviBarImageView)
    }
    
    
    /// 创建一个纯色图片
    /// - Parameters:
    ///   - size: 大小
    ///   - color: 颜色
    /// - Returns: UIImage
    func createImage(size: CGSize, color: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
}
