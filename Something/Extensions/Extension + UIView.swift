//
//  Extension + UIView.swift
//  Something
//
//  Created by Artem on 29.01.2023.
//


import Foundation
import UIKit

extension UIView {
    func createSeparator() -> UIView {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}
