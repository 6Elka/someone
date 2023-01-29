//
//  StrapView.swift
//  Something
//
//  Created by Artem on 29.01.2023.
//

import Foundation
import UIKit

final class StrapSport: UIView {
    
    let imageMain = UIImageView().imageProduct("grayStrap")
    let descriptLabel = UILabel().descript("Спортивный ремешок Black Unity")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
//MARK: - Private Init
extension StrapSport {
    private func initialize() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = #colorLiteral(red: 0.08971471142, green: 0.02503490578, blue: 0.1551320421, alpha: 1)
        self.layer.cornerRadius = 20
        
        //MARK: - View
        self.addSubview(imageMain)
        self.addSubview(descriptLabel)
        
        
        //MARK: - Constraints
        NSLayoutConstraint.activate([
            imageMain.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageMain.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            imageMain.widthAnchor.constraint(equalToConstant: 50),
            imageMain.heightAnchor.constraint(equalToConstant: 80),
        
            descriptLabel.topAnchor.constraint(equalTo: imageMain.bottomAnchor, constant: 20),
            descriptLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            descriptLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5)
        ])
        
    }
}
