//
//  SplashViewController.swift
//  ARKitProject
//
//  Created by Erik Hedegren on 2018-06-07.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Add image
        let imageView = UIImageView(image: UIImage(named: "splash"))
        imageView.isUserInteractionEnabled = true
        imageView.contentMode = .scaleAspectFill
        self.view.addSubview(imageView)
        imageView.frame = self.view.bounds
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(loadAR)))
    }
    
    @objc private func loadAR() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        self.present(vc, animated: true, completion: nil)
    }
}
