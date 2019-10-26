//
//  ViewController.swift
//  OrientationDemo
//
//  Created by mac on 2019/10/26.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func autoChange(_ sender: Any) {
        
        let vc = ViewControllerOne()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func leftChange(_ sender: Any) {
    
        let vc = ViewControllerTwo()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    //是否自动旋转屏幕
//    override var shouldAutorotate: Bool{
//        return false
//    }
//    //旋转屏幕支持的方向
//    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
//        return [.portrait]
//    }
}

