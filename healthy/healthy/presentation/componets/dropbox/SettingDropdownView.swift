//
//  SettingDropdownView.swift
//  healthy
//
//  Created by Ricky Hung on 2023/4/30.
//

import UIKit

public class SettingDropdownView: CustomBaseView {
    // MARK: Property
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var pickerTextField: UITextField!
    
    private var items: [String] = []
    
    
    // MARK: Initalize
    public override func defaultInit() {
        super.defaultInit()
        setupView()
    }
}

private extension SettingDropdownView {
    func setupView() {
        containerView.backgroundColor = .detailBackgroundColor
        pickerTextField.setLeftPaddingPoints(5)
    }
}

public extension SettingDropdownView {
    func setupContent(title: String, items: [String], defaultIndex: Int? = nil) {
        titleLabel.text = title
        self.items = items
        pickerTextField.loadDropdownData(data: items, defaultIndex: defaultIndex, onSelect: itemOnSelect(selectedText:))
    }
        
    func itemOnSelect(selectedText: String) {
        switch selectedText {
        case "":
            print("empty")
        default:
            print("default")
        }
    }
}
