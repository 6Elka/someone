//
//  ProfileView.swift
//  Something
//
//  Created by Artem on 29.01.2023.
//

import Foundation
import UIKit

final class ProfileView: UIView {

    
    //MARK: - Image
    private let imageUser = UIImageView().imageProfile("user")

    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
//MARK: - Private Init
extension ProfileView {
    private func initialize() {
        self.backgroundColor = .yellow
        self.addSubview(imageUser)
        
        //MARK: - Constraints
        NSLayoutConstraint.activate([
            imageUser.topAnchor.constraint(equalTo: self.topAnchor),
            imageUser.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageUser.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageUser.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
    }
}
