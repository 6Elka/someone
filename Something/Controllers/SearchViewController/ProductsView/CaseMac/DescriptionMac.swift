//
//  DescriptionMac.swift
//  Something
//
//  Created by Artem on 29.01.2023.
//

import UIKit

final class DescriptionMacViewController: UIViewController {
    
    //MARK: - View
    let titleLabel = UILabel().titleLabel()
    let macImage = UIImageView().imageProduct("caseDarkGray")
    let descriptLabel = UILabel().titleDescription()
    let macView = MacView()
   
    private let secondDescrtiptLabel = UILabel().secondTitleDescription("Совместимо с Mac Book Pro")
    private let leftButton = UIButton().changeLeftButton(.gray)
    private let rightButton = UIButton().changeRightButton(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
    private let addBag = UIButton().addBag()

    override func viewDidLoad() {
        super.viewDidLoad()

       initialize()
    }
}
//MARK: - Private Init
extension DescriptionMacViewController {
    private func initialize() {
        view.backgroundColor = UIColor(named: "backgroundColor")
        
        //MARK: - Right Bar Button
        navigationItem.rightBarButtonItems = createRightBarButton()
        
        //MARK: - CreateTargetWebView
        let webTap = UITapGestureRecognizer(target: self, action: #selector(nextWeb))
        webTap.numberOfTouchesRequired = 1
        view.addGestureRecognizer(webTap)
        
        //MARK: - View
        view.addSubview(titleLabel)
        view.addSubview(macImage)
        view.addSubview(descriptLabel)
        view.addSubview(leftButton)
        view.addSubview(rightButton)
        view.addSubview(secondDescrtiptLabel)
        view.addSubview(addBag)
        
        
        //MARK: - Contraints
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            macImage.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            macImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            macImage.heightAnchor.constraint(equalToConstant: 250),
            macImage.widthAnchor.constraint(equalToConstant: 250),
            
            descriptLabel.topAnchor.constraint(equalTo: macImage.bottomAnchor, constant: 20),
            descriptLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            leftButton.topAnchor.constraint(equalTo: descriptLabel.bottomAnchor, constant: 20),
            leftButton.widthAnchor.constraint(equalToConstant: 30),
            leftButton.heightAnchor.constraint(equalToConstant: 30),
            leftButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -40),
            
            rightButton.topAnchor.constraint(equalTo: descriptLabel.bottomAnchor, constant: 20),
            rightButton.widthAnchor.constraint(equalToConstant: 30),
            rightButton.heightAnchor.constraint(equalToConstant: 30),
            rightButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 40),
            
            secondDescrtiptLabel.topAnchor.constraint(equalTo: leftButton.bottomAnchor, constant: 20),
            secondDescrtiptLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            addBag.topAnchor.constraint(equalTo: secondDescrtiptLabel.bottomAnchor, constant: 20),
            addBag.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            addBag.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            addBag.heightAnchor.constraint(equalToConstant: 50),
        ])
        //MARK: - Target ButtonLeft
        leftButton.addTarget(self, action: #selector(isActivLeft), for: .touchUpInside)
        rightButton.addTarget(self, action: #selector(isActivRight), for: .touchUpInside)
    }
    @objc func isActivLeft() {
        leftButton.layer.borderColor = UIColor.blue.cgColor
        leftButton.layer.borderWidth = 1
        //
        rightButton.layer.borderColor = nil
        rightButton.layer.borderWidth = 0
        //
        macImage.image = UIImage(named: "caseGray")
        macImage.layer.cornerRadius = 10
        macImage.clipsToBounds = true
        
        
    }
    @objc func isActivRight() {
        rightButton.layer.borderColor = UIColor.blue.cgColor
        rightButton.layer.borderWidth = 1
        //
        leftButton.layer.borderColor = nil
        leftButton.layer.borderWidth = 0
        //
        macImage.image = UIImage(named: "caseDarkGray")
        macImage.layer.cornerRadius = 10
        macImage.clipsToBounds = true
        }
    //MARK: - CreateRightBarButton
    private func createRightBarButton() -> [UIBarButtonItem] {
        let first = UIBarButtonItem(image: UIImage(systemName: "square.and.arrow.up"), style: .done, target: self, action: #selector(addBuying))
        let second = UIBarButtonItem(image: UIImage(systemName: "heart"), style: .done, target: self, action: #selector(addBuying))
        return [second, first]
    }
    @objc func addBuying() {
        print("Like")
    }
    //MARK: - GestureWEB
    @objc func nextWeb() {
        let wkWeb = WebViewController()
        self.present(wkWeb, animated: true)
    }
}

