//
//  HomeViewController.swift
//  TabBarUI
//
//  Created by Nguyễn Hữu Toàn on 07/07/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    fileprivate let labelHome: UILabel = {
        let label = UILabel()
        label.text = "Home"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont (name: "Helvetica Bold", size: 30)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    fileprivate let imageHome: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "home3D")
        image.clipsToBounds = true
        image.layer.cornerRadius = 10.0
        return image
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
        view.backgroundColor = .systemBackground
        view.addSubview(imageHome)
        
        imageHome.addSubview(labelHome)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        applyConstraintImage()
        applyConstraintLabel()
        
    }
    
    func applyConstraintImage() {
        NSLayoutConstraint.activate([
            imageHome.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageHome.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageHome.widthAnchor.constraint(equalToConstant: view.frame.size.width / 1.1),
            imageHome.heightAnchor.constraint(equalToConstant: view.frame.size.height / 3.5)
    
        ])
    }
    
    func applyConstraintLabel() {
        NSLayoutConstraint.activate([
            labelHome.centerXAnchor.constraint(equalTo: imageHome.centerXAnchor), 
            labelHome.centerYAnchor.constraint(equalTo: imageHome.centerYAnchor)
        ])
    }

}
