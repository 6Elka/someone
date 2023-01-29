//
//  MacView.swift
//  Something
//
//  Created by Artem on 29.01.2023.
//

import Foundation
import UIKit

final class MacView: UIView {
    
    let mac = UIImageView().imageProduct("caseDarkGray")
    let descriptLabel = UILabel().descript("Чехол Incase Flat для MacBook Pro 16 дюймов")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
//MARK: - Private Init
extension MacView {
    private func initialize() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = #colorLiteral(red: 0.08971471142, green: 0.02503490578, blue: 0.1551320421, alpha: 1)
        self.layer.cornerRadius = 20
        
        //MARK: - View
        self.addSubview(mac)
        self.addSubview(descriptLabel)
        
        
        //MARK: - Constraints
        NSLayoutConstraint.activate([
            mac.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            mac.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            mac.widthAnchor.constraint(equalToConstant: 100),
            mac.heightAnchor.constraint(equalToConstant: 80),
        
            descriptLabel.topAnchor.constraint(equalTo: mac.bottomAnchor, constant: 20),
            descriptLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            descriptLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5)
        ])
        
    }
}
