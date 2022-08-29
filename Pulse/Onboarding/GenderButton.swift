//
//  GenderButton.swift
//  Pulse
//
//  Created by Roman Zhukov on 25.08.2022.
//

import UIKit

final class GenderButton: UIButton {
    
    private let title = UILabel()
    private let emoji = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTitle(title: String) {
        self.title.text = title
    }
    
    func setEmoji(emoji: String) {
        self.emoji.text = emoji
    }
}

private extension GenderButton {
    func addViews() {
        addSubview(title)
        addSubview(emoji)
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            title.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            emoji.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            emoji.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    func configure() {
        backgroundColor = .systemGray5
        layer.cornerRadius = 18
        layer.borderWidth = 1
        layer.borderColor = UIColor.systemGray.cgColor
        
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = Resources.Colors.blackText
        title.textAlignment = .center
        title.font = UIFont.systemFont(ofSize: 17)
        
        emoji.translatesAutoresizingMaskIntoConstraints = false
        emoji.textAlignment = .center
    }
}
