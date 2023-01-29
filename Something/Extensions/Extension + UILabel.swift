//
//  Extension + UILabel.swift
//  Something
//
//  Created by Artem on 29.01.2023.
//

import Foundation
import UIKit

extension UILabel {
    func titlelabel(_ title: String) -> UILabel {
        let lbl = UILabel()
        lbl.font = .systemFont(ofSize: 20, weight: .semibold)
        lbl.text = title
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    func result() -> UILabel {
        let lbl = UILabel()
        lbl.font = .systemFont(ofSize: 20, weight: .semibold)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    func descript(_ text: String) -> UILabel {
        let lbl = UILabel()
        lbl.font = .systemFont(ofSize: 15, weight: .bold)
        lbl.text = text
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    func option(_ title: String) -> UILabel {
        let lbl = UILabel()
        lbl.font = .systemFont(ofSize: 16, weight: .semibold)
        lbl.text = title
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    func titleLabel() -> UILabel {
        let lbl = UILabel()
        lbl.font = .systemFont(ofSize: 16, weight: .semibold)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    func titleDescription() -> UILabel {
        let lbl = UILabel()
        lbl.font = .systemFont(ofSize: 14, weight: .semibold)
        lbl.textColor = .gray
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    func secondTitleDescription(_ text: String) -> UILabel {
        let lbl = UILabel()
        lbl.font = .systemFont(ofSize: 14, weight: .semibold)
        lbl.textColor = .gray
        lbl.numberOfLines = 0
        lbl.text = text
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    func mainlabel(_ title: String) -> UILabel {
        let lbl = UILabel()
        lbl.font = .systemFont(ofSize: 25, weight: .semibold)
        lbl.text = title
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    func descriptionLabel(_ title: String, _ size: CGFloat, _ color: UIColor) -> UILabel {
        let lbl = UILabel()
        lbl.font = .systemFont(ofSize: size, weight: .semibold)
        lbl.text = title
        lbl.textColor = color
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    func recommendDescription() -> UILabel {
        let lbl = UILabel()
        lbl.font = .systemFont(ofSize: 15, weight: .semibold)
        lbl.numberOfLines = 0
        lbl.text = "Получайте новости о своем заказе в режиме реального времени."
        lbl.textColor = .black
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    func pushDescription() -> UILabel {
        let lbl = UILabel()
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 12, weight: .semibold)
        lbl.text = "Включите уведомление, чтобы получать новости о своем заказе."
        lbl.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    func createDevice(_ title: String) -> UILabel {
        let lbl = UILabel()
        lbl.font = .systemFont(ofSize: 20, weight: .bold)
        lbl.text = title
        lbl.textColor = .black
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
}

