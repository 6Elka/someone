//
//  Extension + UIImageView.swift
//  Something
//
//  Created by Artem on 29.01.2023.
//

import Foundation
import UIKit

extension UIImageView {
    func imageProduct(_ title: String) -> UIImageView {
        let img = UIImageView()
        img.image = UIImage(named: title)
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.layer.cornerRadius = 10
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }
    
    func pushImage() -> UIImageView {
        let img = UIImageView()
        img.image = UIImage(systemName: "app.badge")
        img.tintColor = .red
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.layer.cornerRadius = 10
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }
    
    func imageProfile(_ title: String) -> UIImageView {
        let img = UIImageView()
        img.image = UIImage(named: title)
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.layer.cornerRadius = 30
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }
    
    
    
}
