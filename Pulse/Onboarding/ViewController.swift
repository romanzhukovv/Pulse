//
//  ViewController.swift
//  Pulse
//
//  Created by Roman Zhukov on 26.07.2022.
//

import UIKit

class ViewController: UIViewController {
    private let genderButton = GenderButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(genderButton)
        genderButton.translatesAutoresizingMaskIntoConstraints = false
        genderButton.setTitle(title: "Male")
        genderButton.setEmoji(emoji: "😀")
        
        NSLayoutConstraint.activate([
            genderButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            genderButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            genderButton.heightAnchor.constraint(equalToConstant: 68),
            genderButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
        
        genderButton.addTarget(self, action: #selector(genderButtonAction), for: .touchUpInside)
    }
}

@objc extension ViewController {
    private func genderButtonAction() {
        print("Gender")
    }
}
