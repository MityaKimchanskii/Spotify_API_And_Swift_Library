//
//  GFSecondaryTitleLabel.swift
//  GHFollowers
//
//  Created by Mitya Kim on 12/8/24.
//


import UIKit


class GFSecondaryTitleLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(fontSize: CGFloat) {
        super.init(frame: .zero)
        
        font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
        
        configure()
    }
    
    private func configure() {
        textColor = .secondaryLabel
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.75
        lineBreakMode = .byTruncatingTail
        numberOfLines = 0
        translatesAutoresizingMaskIntoConstraints = false
    }
}
