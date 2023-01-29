//
//  Extension + UIToolbar.swift
//  Something
//
//  Created by Artem on 29.01.2023.
//

import Foundation
import UIKit

extension UIToolbar {
    func createToolbar() -> UIToolbar {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        toolbar.tintColor = .white
        toolbar.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        toolbar.translatesAutoresizingMaskIntoConstraints = false
        return toolbar
    }
}
