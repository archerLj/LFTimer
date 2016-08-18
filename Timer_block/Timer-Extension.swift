//
//  Timer-Extension.swift
//  Timer_block
//
//  Created by archerLj on 16/8/18.
//  Copyright © 2016年 com.bocodo.csr. All rights reserved.
//

import Foundation

extension Timer {
    private class TempWrapper {
        var timerAction: () -> ()
        weak var target: AnyObject?
        
        init(timerAction: () -> (), target: AnyObject) {
            self.timerAction = timerAction
            self.target = target
        }
    }
    
    public class func scheduledTimer(timeInterval: TimeInterval, target: AnyObject, repeats: Bool = false, action: () -> ()) -> Timer {
        
        return scheduledTimer(
            timeInterval: timeInterval,
            target: self,
            selector: #selector(self._timeAction(timer:)),
            userInfo: TempWrapper(timerAction:action, target: target),
            repeats: repeats
        )
    }
    
    class func _timeAction(timer: Timer) {
        if let tempWrapper = timer.userInfo as? TempWrapper {
            if let _ = tempWrapper.target {
                tempWrapper.timerAction()
            } else {
                timer.invalidate()
            }
        }
    }
}
