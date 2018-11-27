//
//  SecondViewController.swift
//  gesPopWhileNavHide
//
//  Created by lixiang on 2018/11/27.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UIGestureRecognizerDelegate/********** ① **********/ {
    
    var original_ipgr_delegate : UIGestureRecognizerDelegate?/********** ② **********/

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second"
        view.backgroundColor = .lightGray
        
        let btn = UIButton(frame: CGRect(x: 0, y: 64, width: 150, height: 100))
        btn.setTitle("go to third", for: .normal)
        btn.setTitleColor(#colorLiteral(red: 0, green: 0.4503136873, blue: 0.995437324, alpha: 1), for: .normal)
        btn.addTarget(self, action:#selector(goToThird), for:.touchUpInside)
        view.addSubview(btn)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated:true)
        
        /********** ③ **********/
        self.original_ipgr_delegate = self.navigationController?.interactivePopGestureRecognizer?.delegate
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated:true)
        
        /********** ④ **********/
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self.original_ipgr_delegate
    }

    @objc private func goToThird() {
        self.navigationController?.pushViewController(ThirdViewController(), animated: true)
    }
    

}
