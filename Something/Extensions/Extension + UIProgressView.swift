//
//  Extension + UIProgressView.swift
//  Something
//
//  Created by Artem on 29.01.2023.
//

import Foundation
import UIKit

extension UIProgressView {
    func createProgress() -> UIProgressView {
        let prog = UIProgressView()
        prog.tintColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        prog.progress = 0.5
        prog.translatesAutoresizingMaskIntoConstraints = false
        return prog
    }
}
