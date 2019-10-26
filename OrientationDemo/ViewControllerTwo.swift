//
//  ViewControllerTwo.swift
//  OrientationDemo
//
//  Created by mac on 2019/10/26.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

///锁定横屏 左边
class ViewControllerTwo: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        let View = UIView(frame: CGRect(x: 50, y: 100, width: 200, height: 50))
        View.backgroundColor = .green
        self.view.addSubview(View)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        appDelegate.isRight = true
        InvocationHandle.interfaceOrientation(.landscapeLeft)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        appDelegate.isRight = false
        InvocationHandle.interfaceOrientation(.portrait)
    }
    
    //是否自动旋转屏幕
    override var shouldAutorotate: Bool{
        return true
    }
    //旋转屏幕支持的方向
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return [.landscapeLeft]
    }
}
