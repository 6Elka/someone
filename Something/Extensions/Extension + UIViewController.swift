//
//  Extension + UIViewController.swift
//  Something
//
//  Created by Artem on 29.01.2023.
//

import Foundation
import UIKit

extension UIViewController {
    
        func createCustomTitleView(imageContact: String) -> UIView {
    
            //MARK: - View
            let view = UIView()
            view.frame = CGRect(x: 100, y: 100, width: self.view.frame.width, height: 300)
    
            //MARK: - Button
            let button = UIButton()
            button.setImage(UIImage(named: imageContact), for: .normal)
            button.layer.cornerRadius = 25
            button.clipsToBounds = true
            button.frame = CGRect(x: self.view.frame.width - 80, y: 40, width: 50, height: 50)
         
            view.addSubview(button)
    
            return view
        }
       
}
