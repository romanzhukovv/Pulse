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
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension GenderButton {
    func addViews() {
        addSubview(title)
        addSubview(emoji)
    }
    
    func layoutViews() {
        
    }
    
    func configure() {
        title.translatesAutoresizingMaskIntoConstraints = false
        emoji.translatesAutoresizingMaskIntoConstraints = false
    }
}
