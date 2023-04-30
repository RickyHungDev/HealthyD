//
//  SettingEditView.swift
//  healthy
//
//  Created by Ricky Hung on 2023/4/30.
//

import UIKit

public class SettingEditView: CustomBaseView {
    
    // MARK: Property
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    
    
    // MARK: Initialize
    public override func defaultInit() {
        super.defaultInit()
        setupView()
    }
}

private extension SettingEditView {
    func setupView() {
        containerView.backgroundColor = .detailBackgroundColor
    }
}

public extension SettingEditView {
    func setupContent(title: String) {
        titleLabel.text = title
    }
}
