//
//  NextViewController.swift
//  Timer_block
//
//  Created by archerLj on 16/8/17.
//  Copyright © 2016年 com.bocodo.csr. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    /**
     * 点击导航栏返回按钮，可以看到控制器deinit方法调用，并且定时器停止
     */
    var myTimer: Timer!
    var count: Int64 = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Timer VCs"
        myTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, repeats: true, action: { [weak self] in
            print("time action")
            print(self?.count)
        })
    }
    
    func timerAction(timer: Timer) {
        print("timer action")
    }
    
    deinit {
        myTimer.invalidate()
        print("viewcontroller deinit")
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        count += 1
    }
    
}
