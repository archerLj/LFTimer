//
//  ViewController.swift
//  Timer_block
//
//  Created by archerLj on 16/8/17.
//  Copyright © 2016年 com.bocodo.csr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Main VC"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let nextVC = NextViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

