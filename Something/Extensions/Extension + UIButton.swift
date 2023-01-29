//
//  Extension + UIButton.swift
//  Something
//
//  Created by Artem on 29.01.2023.
//


import Foundation
import UIKit

extension UIButton {
    func changeLeftButton(_ color: UIColor?) -> UIButton {
        let btn = UIButton()
        btn.backgroundColor = color
        btn.layer.cornerRadius = 15
        btn.clipsToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }
    
    func changeRightButton(_ color: UIColor?) -> UIButton {
        let btn = UIButton()
        btn.backgroundColor = color
        btn.layer.cornerRadius = 15
        btn.clipsToBounds = true
        btn.layer.borderColor = UIColor.blue.cgColor
        btn.layer.borderWidth = 1
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }
    
    func addBag() -> UIButton {
        let btn = UIButton()
        btn.backgroundColor = .blue
        btn.layer.cornerRadius = 10
        btn.clipsToBounds = true
        btn.setTitle("Добавить корзину", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }
    
    func nextButton() -> UIButton {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        btn.titleLabel?.contentMode = .scaleAspectFit
        btn.tintColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }
    
    func showButton() -> UIButton {
        let btn = UIButton()
        btn.setTitle("Показать все", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 13)
        btn.setTitleColor(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }
    
    func showImageButton(image: String) -> UIButton {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: image), for: .normal)
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        button.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
}
