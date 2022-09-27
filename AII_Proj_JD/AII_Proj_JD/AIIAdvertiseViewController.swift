//
//  AIIAdvertiseViewController.swift
//  AII_Proj_JD
//
//  Created by JustinChou on 2022/9/27.
//

import UIKit

class AIIAdvertiseViewController: AIIBaseViewController {
    
    lazy var timer = DispatchSource.makeTimerSource(flags: [], queue: DispatchQueue.global())
    
    var maintainSeconds = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        timeCountDown()
    }
    
    /// 倒计时
    func timeCountDown() {
        timer.schedule(deadline: .now(), repeating: .seconds(1))
        timer.setEventHandler {
            DispatchQueue.main.async { [weak self] in
                if self!.maintainSeconds <= 0 {
                    self!.cancelTimer()
                }
                self!.maintainSeconds -= 1
            }
        }
        timer.resume()
    }
    
    func cancelTimer() {
        timer.cancel()
        switchRootViewController()
    }
}

extension AIIAdvertiseViewController {
    
    /// 单 window: 从广告页面切换到主界面
    private func switchRootViewController() {
        // 此处找到第一个 window
        let window = self.view.window?.windowScene?.windows.first
        
        // 过渡动画：0.5s 淡出
        UIView.transition(with: window!,
                          duration: 0.5,
                          options: .transitionCrossDissolve,
                          animations: {
            let old = UIView.areAnimationsEnabled
            UIView.setAnimationsEnabled(false)
            window!.rootViewController = AIIMainTabBarController()
            UIView.setAnimationsEnabled(old)
        },
                          completion: nil)
    }
}
