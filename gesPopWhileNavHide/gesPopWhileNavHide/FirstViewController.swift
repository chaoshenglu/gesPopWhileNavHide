//
//  FirstViewController.swift
//  gesPopWhileNavHide
//
//  Created by lixiang on 2018/11/27.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First"
        view.backgroundColor = .white
        
        let btn = UIButton(frame: CGRect(x: 0, y: 64, width: 150, height: 100))
        btn.setTitle("go to second", for: .normal)
        btn.setTitleColor(#colorLiteral(red: 0, green: 0.4503136873, blue: 0.995437324, alpha: 1), for: .normal)
        btn.addTarget(self, action:#selector(goToSecond), for:.touchUpInside)
        view.addSubview(btn)
        
    }

    @objc private func goToSecond() {
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
    }

}

