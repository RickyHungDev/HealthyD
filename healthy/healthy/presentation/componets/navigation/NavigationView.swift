//
//  NavigationView.swift
//  healthy
//
//  Created by Ricky Hung on 2023/4/30.
//

import UIKit

public class NavigationView: CustomBaseView {
    
    // MARK: Property
    @IBOutlet weak var titleLabel: UILabel!
    
    // MARK: Initialize
    public override func defaultInit() {
        super.defaultInit()
    }
}

public extension NavigationView {
    func setupContent(title: String) {
        titleLabel.text = title
    }
}
