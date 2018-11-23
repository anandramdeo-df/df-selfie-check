//
//  ViewController.swift
//  SelfieCheckDemo
//
//  Created by Ankit Jayaswal on 15/10/18.
//  Copyright © 2018 Ranosys. All rights reserved.
//

import UIKit
//import SelfieCheckFramework

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
        
        // Open view with new configuration
        self.openViewWithUpdatedConfiguration()
        
        // Open view with default configuration
        //        let vc = SelfieCheck.sharedInstance
        //        vc.returnClosure = { image in
        //            self.selfieImageView.image = image
        //        }
        //        present(vc, animated: true, completion: nil)
    }

    func openViewWithUpdatedConfiguration() {

//        let selfiCheck = SelfieCheck.sharedInstance
//        selfiCheck.globalBGColor = #colorLiteral(red: 0.9137254902, green: 0.3921568627, blue: 0.3647058824, alpha: 1)
//        selfiCheck.globalMessagesColor = UIColor.white
//        selfiCheck.globalTitleColor = UIColor.white
//        selfiCheck.globalButtonCornerRadius = 5
//        selfiCheck.globalOptionButtonColor = #colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 0.9725490196, alpha: 1)
//        selfiCheck.globalTitleOptionButtonColor = #colorLiteral(red: 0.4039215686, green: 0.7098039216, blue: 0.3647058824, alpha: 1)
//        selfiCheck.navigationTitleColor = #colorLiteral(red: 0.4039215686, green: 0.7098039216, blue: 0.3647058824, alpha: 1)
//        selfiCheck.navigationBarColor = #colorLiteral(red: 0.4039215686, green: 0.7098039216, blue: 0.3647058824, alpha: 1)
//
//        selfiCheck.globalActioButtonColor = #colorLiteral(red: 0.4039215686, green: 0.7098039216, blue: 0.3647058824, alpha: 1)
//        selfiCheck.globalTitleActionButtonColor = #colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 0.9725490196, alpha: 1)
//        selfiCheck.globalBorderButtonColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        selfiCheck.globalOptionBorderButtonColor = #colorLiteral(red: 0.4039215686, green: 0.7098039216, blue: 0.3647058824, alpha: 1)
//        selfiCheck.overlayColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
//
//        selfiCheck.tipGuidanceOne = "Tip : Please look straight and then blink eyes."
//        selfiCheck.titlePermissionVC = "Please Allow camera permission."
//
//        selfiCheck.storyboardInstance(success: { [weak self] viewController in
//            DispatchQueue.main.async {
//                if let vc = viewController {
//                    self?.present(vc, animated: true, completion: nil)
//                }
//            }
//            }, failure: { (error) in
//                print(error?.userInfo ?? "Your api token is not valid")
//        })
//
//        selfiCheck.returnClosure = { image in
//            self.selfieImageView.image = image
//        }

    }
    
}

