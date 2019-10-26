//
//  ViewControllerOne.swift
//  OrientationDemo
//
//  Created by mac on 2019/10/26.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

/// 自动横屏 左 右
class ViewControllerOne: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        let View = UIView(frame: CGRect(x: 50, y: 100, width: 200, height: 50))
        View.backgroundColor = .green
        self.view.addSubview(View)
        

        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.isRight = true
    }

    //是否自动旋转屏幕
    override var shouldAutorotate: Bool{
        return true
    }
    //旋转屏幕支持的方向
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return [.landscapeRight,.landscapeLeft,.portrait]
    }
}
