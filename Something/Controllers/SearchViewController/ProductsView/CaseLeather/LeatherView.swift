//
//  LeatherView.swift
//  Something
//
//  Created by Artem on 29.01.2023.
//

import Foundation
import UIKit

final class LeatherCase: UIView {
    
    let leather = UIImageView().imageProduct("caseBlack")
    let descriptLabel = UILabel().descript("Кожаный чехол для MacBook 16 дюймов")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
//MARK: - Private Init
extension LeatherCase {
    private func initialize() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = #colorLiteral(red: 0.08971471142, green: 0.02503490578, blue: 0.1551320421, alpha: 1)
        self.layer.cornerRadius = 20
        
        //MARK: - View
        self.addSubview(leather)
        self.addSubview(descriptLabel)
        
        
        //MARK: - Constraints
        NSLayoutConstraint.activate([
            leather.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            leather.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            leather.widthAnchor.constraint(equalToConstant: 100),
            leather.heightAnchor.constraint(equalToConstant: 80),
        
            descriptLabel.topAnchor.constraint(equalTo: leather.bottomAnchor, constant: 20),
            descriptLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            descriptLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5)
        ])
        
    }
}
