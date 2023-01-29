//
//  ForYouController.swift
//  Something
//
//  Created by Artem on 29.01.2023.
//

import UIKit

final class ForYouViewController: UIViewController {
    
    //MARK: - Separator
    private let separatorView = UIView().createSeparator()
    private let recommendView = UIView().createSeparator()
    
    //MARK: - Label
    private let titleLabel = UILabel().mainlabel("Вот что нового")
    private let recommendLabel = UILabel().descriptionLabel("Рекомендуется вам", 18, .black)
    private let descriptionLabel = UILabel().recommendDescription()
    private let pushLabel = UILabel().pushDescription()
    private let yourDevice = UILabel().createDevice("ваши устройства")
    
    //MARK: - Image
    private let imagePush = UIImageView().pushImage()
    private let images = ["user", "user2", "user3"]
    
    
    //MARK: - Button
    private let chevronRight = UIButton().nextButton()
    private let showButton = UIButton().showButton()
    
    //MARK: - View
    private let orderView = OrderView()
    private let pondView = PondView(frame: CGRect(x: 0, y: 50, width: 100, height: 100))

    
    override func viewDidLoad() {
        super.viewDidLoad()
       initialize()
        
        
    }
}
//MARK: - Private Init
extension ForYouViewController {
    func initialize() {
        view.backgroundColor = .white
        
        UserDefaults.standard.set(images, forKey: "Save")
        
        title = "Для Вас"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let customTitle = createCustomTitleView(imageContact: "user")
        
        //MARK: - Bar Button Item
        let tap = UITapGestureRecognizer(target: self, action: #selector(edit))
        tap.numberOfTapsRequired = 1
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: customTitle)
        navigationController?.navigationBar.addGestureRecognizer(tap)
        
   
        
        
        //MARK: - View
        view.addSubview(separatorView)
        view.addSubview(titleLabel)
        view.addSubview(orderView)
        view.addSubview(recommendLabel)
        view.addSubview(imagePush)
        view.addSubview(descriptionLabel)
        view.addSubview(pushLabel)
        view.addSubview(recommendView)
        view.addSubview(yourDevice)
        view.addSubview(chevronRight)
        view.addSubview(showButton)
        
        //MARK: - Contraints
        NSLayoutConstraint.activate([
            separatorView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            separatorView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            separatorView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            separatorView.heightAnchor.constraint(equalToConstant: 1),
            
            titleLabel.topAnchor.constraint(equalTo: separatorView.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            
            orderView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            orderView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            orderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            orderView.heightAnchor.constraint(equalToConstant: 170),
            
            recommendLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            recommendLabel.topAnchor.constraint(equalTo: orderView.bottomAnchor, constant: 60),
            
            imagePush.topAnchor.constraint(equalTo: recommendLabel.bottomAnchor, constant: 40),
            imagePush.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            imagePush.widthAnchor.constraint(equalToConstant: 50),
            imagePush.heightAnchor.constraint(equalToConstant: 50),
            
            descriptionLabel.topAnchor.constraint(equalTo: recommendLabel.bottomAnchor, constant: 40),
            descriptionLabel.leadingAnchor.constraint(equalTo: imagePush.trailingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            
            chevronRight.centerYAnchor.constraint(equalTo: descriptionLabel.bottomAnchor),
            chevronRight.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            pushLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 5),
            pushLabel.leadingAnchor.constraint(equalTo: imagePush.trailingAnchor, constant: 20),
            pushLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            recommendView.topAnchor.constraint(equalTo: pushLabel.bottomAnchor, constant: 20),
            recommendView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            recommendView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            recommendView.heightAnchor.constraint(equalToConstant: 1),
            
            yourDevice.topAnchor.constraint(equalTo: recommendView.bottomAnchor, constant: 20),
            yourDevice.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            showButton.centerYAnchor.constraint(equalTo: yourDevice.centerYAnchor),
            showButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            showButton.heightAnchor.constraint(equalToConstant: 20),
            showButton.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    //MARK: - Alert
    @objc func edit() {
        let alert = UIAlertController(title: "Change the iamge user", message: "Select or change", preferredStyle: .actionSheet)
        
        alert.view.backgroundColor = .white
        alert.view.heightAnchor.constraint(equalToConstant: 400).isActive = true
        alert.view.layer.cornerRadius = 20
        
        //MARK: - Button
        let userFirst = UIImageView().imageProfile("user")
        let userSecond = UIImageView().imageProfile("user2")
        let userThird =  UIImageView().imageProfile("user3")
        
        //MARK: - ScrollView
        let scrollView = UIScrollView().createScroll()
        scrollView.contentSize = CGSize(width: alert.view.frame.width, height: 100)
        
        //MARK: - Scroll Add
        scrollView.addSubview(userFirst)
        scrollView.addSubview(userSecond)
        scrollView.addSubview(userThird)
        
        alert.view.addSubview(scrollView)
        
        //MARK: - Constraints
        scrollView.topAnchor.constraint(equalTo: alert.view.topAnchor, constant: 80).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: alert.view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: alert.view.trailingAnchor).isActive = true
        scrollView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        userFirst.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        userFirst.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20).isActive = true
        userFirst.widthAnchor.constraint(equalToConstant: 100).isActive = true
        userFirst.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        userSecond.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        userSecond.leadingAnchor.constraint(equalTo: userFirst.trailingAnchor, constant: 20).isActive = true
        userSecond.widthAnchor.constraint(equalToConstant: 100).isActive = true
        userSecond.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        userThird.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        userThird.leadingAnchor.constraint(equalTo: userSecond.trailingAnchor, constant: 20).isActive = true
        userThird.widthAnchor.constraint(equalToConstant: 100).isActive = true
        userThird.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        //MARK: - Add Ok Action
        let firstImage = UIAlertAction(title: "First", style: .default) { _ in
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView:    self.createCustomTitleView(imageContact: "user"))
            userFirst.image = UIImage(named: UserDefaults.standard.string(forKey: "Save") ?? "")
        }
        let secondtImage = UIAlertAction(title: "Second", style: .default) { _ in
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView:  self.createCustomTitleView(imageContact: "user2"))
            UserDefaults.standard.string(forKey: "Two")
            userSecond.image = UIImage(named: UserDefaults.standard.string(forKey: "Save") ?? "")
        }
        let thirdImage = UIAlertAction(title: "Third", style: .default) { _ in
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView:  self.createCustomTitleView(imageContact: "user3"))
            UserDefaults.standard.string(forKey: "Three")
            userThird.image = UIImage(named: UserDefaults.standard.string(forKey: "Save") ?? "")
        }
        alert.addAction(firstImage)
        alert.addAction(secondtImage)
        alert.addAction(thirdImage)
        
        present(alert, animated: true)
    }
}

