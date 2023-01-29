//
//  OrderView.swift
//  Something
//
//  Created by Artem on 29.01.2023.
//

import Foundation
import UIKit

final class OrderView: UIView {
    //MARK: - Image
    private let image = UIImageView().imageProduct("air")
    
    //MARK: - Label
    private let orderLabel = UILabel().descriptionLabel("Ваш заказ отправлен.", 16, .black)
    private let descriptionLabel = UILabel().descriptionLabel("1 товар, доставка завтра.", 13, #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
    private let start = UILabel().descriptionLabel("Обработка", 13, .black)
    private let process = UILabel().descriptionLabel("Отправлено", 13, .black)
    private let finish = UILabel().descriptionLabel("Доставлено", 13, .black)
    
    //MARK: - Button
    private let rightChevron = UIButton().nextButton()
    
    //MARK: - Separator
    private let separatorView = UIView().createSeparator()
    
    //MARK: - Progress
    private let progress = UIProgressView().createProgress()
    
    //MARK: - StackView
    private var stackViewVertical = UIStackView()
    private var stackViewHorizontal = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initialize()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
//MARK: - Private Init
extension OrderView {
    private func initialize() {
        self.backgroundColor = .white
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = 10
        
        //MARK: - Shadow
        self.layer.shadowRadius = 10
        self.layer.shadowOffset = .zero
        self.layer.shadowOpacity = 0.5
        self.layer.shadowColor = UIColor.black.cgColor
        
        
        //MARK: - View
        addSubview(image)
        addSubview(rightChevron)
        addSubview(separatorView)
        addSubview(progress)
        
        //MARK: - StackViewVertical
        stackViewVertical = UIStackView(arrangedSubviews: [orderLabel, descriptionLabel], axis: .vertical, distribution: .fillEqually, spacing: 0)
        addSubview(stackViewVertical)
        
        //MARK: - - StackViewHorizontal
        stackViewHorizontal = UIStackView(arrangedSubviews: [start, process, finish], axis: .horizontal, distribution: .fillEqually, spacing: 45)
        addSubview(stackViewHorizontal)
        
        //MARK: - Contraints
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            image.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            image.heightAnchor.constraint(equalToConstant: 65),
            image.widthAnchor.constraint(equalToConstant: 50),
            
            stackViewVertical.centerYAnchor.constraint(equalTo: image.centerYAnchor),
            stackViewVertical.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 10),
            stackViewVertical.heightAnchor.constraint(equalToConstant: 40),
            stackViewVertical.widthAnchor.constraint(equalToConstant: 200),
            
            rightChevron.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            rightChevron.centerYAnchor.constraint(equalTo: descriptionLabel.centerYAnchor),
            
            separatorView.topAnchor.constraint(equalTo: stackViewVertical.bottomAnchor, constant: 20),
            separatorView.leadingAnchor.constraint(equalTo: leadingAnchor),
            separatorView.trailingAnchor.constraint(equalTo: trailingAnchor),
            separatorView.heightAnchor.constraint(equalToConstant: 1),
            
            progress.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            progress.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            progress.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 20),
            progress.heightAnchor.constraint(equalToConstant: 7),
            
            stackViewHorizontal.topAnchor.constraint(equalTo: progress.bottomAnchor, constant: 10),
            stackViewHorizontal.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            stackViewHorizontal.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            stackViewHorizontal.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}

