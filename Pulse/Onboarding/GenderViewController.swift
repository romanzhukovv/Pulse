//
//  ViewController.swift
//  Pulse
//
//  Created by Roman Zhukov on 26.07.2022.
//

import UIKit

class GenderViewController: BaseViewController {
    private let maleButton = GenderButton()
    private let femaleButton = GenderButton()
    private let nonBinaryButton = GenderButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}

extension GenderViewController {
    override func addViews() {
        super.addViews()
        
        view.addSubview(maleButton)
        view.addSubview(femaleButton)
        view.addSubview(nonBinaryButton)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            maleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            maleButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            maleButton.heightAnchor.constraint(equalToConstant: 68),
            maleButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            femaleButton.topAnchor.constraint(equalTo: maleButton.bottomAnchor, constant: 12),
            femaleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            femaleButton.heightAnchor.constraint(equalToConstant: 68),
            femaleButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            nonBinaryButton.topAnchor.constraint(equalTo: femaleButton.bottomAnchor, constant: 12),
            nonBinaryButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nonBinaryButton.heightAnchor.constraint(equalToConstant: 68),
            nonBinaryButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
    }
    
    override func configure() {
        super.configure()
        
        maleButton.translatesAutoresizingMaskIntoConstraints = false
        maleButton.setTitle(title: "Male")
        maleButton.setEmoji(emoji: "😀")
        maleButton.addTarget(self, action: #selector(genderButtonAction), for: .touchUpInside)
        
        femaleButton.translatesAutoresizingMaskIntoConstraints = false
        femaleButton.setTitle(title: "Female")
        femaleButton.setEmoji(emoji: "😁")
        femaleButton.addTarget(self, action: #selector(genderButtonAction), for: .touchUpInside)
        
        nonBinaryButton.translatesAutoresizingMaskIntoConstraints = false
        nonBinaryButton.setTitle(title: "Non-Binary")
        nonBinaryButton.setEmoji(emoji: "😍")
        nonBinaryButton.addTarget(self, action: #selector(genderButtonAction), for: .touchUpInside)
    }
}

@objc extension GenderViewController {
    private func genderButtonAction() {
        print("Gender")
    }
}
