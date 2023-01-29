//
//  PondView.swift
//  Something
//
//  Created by Artem on 29.01.2023.
//

import Foundation
import UIKit

final class PondView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - Private Init
extension PondView {
    private func initialize() {
        self.backgroundColor = .green
    }
}
