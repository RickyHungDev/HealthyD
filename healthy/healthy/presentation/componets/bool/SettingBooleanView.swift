//
//  SettingBooleanView.swift
//  healthy
//
//  Created by Ricky Hung on 2023/4/30.
//

import UIKit

public class SettingBooleanView: CustomBaseView {
    
    // MARK: Property
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var buttonStackView: UIStackView!
    
    
    // MARK: Initialize
    public override func defaultInit() {
        super.defaultInit()
        setupView()
    }
}

private extension SettingBooleanView {
    func setupView() {
        containerView.backgroundColor = .detailBackgroundColor
        noButton.backgroundColor = .noButtonBackgroundColor
        yesButton.backgroundColor = .yesButtonBackgroundColor
        
        buttonStackView.layer.borderWidth = 1
        buttonStackView.layer.borderColor = UIColor.lightGray.cgColor
    }
}

public extension SettingBooleanView {
    func setupContent(title: String) {
        titleLabel.text = title
    }
}
