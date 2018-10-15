//
//  ViewController.swift
//  SelfieCheckDemo
//
//  Created by Ankit Jayaswal on 15/10/18.
//  Copyright © 2018 Ranosys. All rights reserved.
//

import UIKit
import SelfieCheckFramework

class ViewController: UIViewController {

    lazy var selfieButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 50, y: UIScreen.main.bounds.height - 100, width: UIScreen.main.bounds.width - 100, height: 50))
        button.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        button.layer.cornerRadius = 2.0
        button.setTitle("Click Selfie", for: .normal)
        button.addTarget(self, action: #selector(selfieButtonClick(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var selfieImageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 50, y: 100, width: UIScreen.main.bounds.width - 100, height: UIScreen.main.bounds.height - 250))
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.borderWidth = 1.0
        imageView.layer.cornerRadius = 2.0
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(selfieImageView)
        self.view.addSubview(selfieButton)
    }
    
    @objc func selfieButtonClick(_ sender: UIButton) {
        guard let vc = SelfieCheckViewController.storyboardInstance() else { fatalError("Not Found") }
        vc.returnClosure = { image in
            self.selfieImageView.image = image
        }
        let navVC = UINavigationController(rootViewController: vc)
        present(navVC, animated: true, completion: nil)
    }

}

