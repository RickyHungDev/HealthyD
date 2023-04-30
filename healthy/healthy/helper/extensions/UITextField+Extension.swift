//
//  UITextField+Extension.swift
//  healthy
//
//  Created by Ricky Hung on 2023/4/30.
//

import UIKit

extension UITextField {
    func loadDropdownData(data: [String], defaultIndex: Int?) {
        self.inputView = MyPickerView(pickerData: data, dropdownField: self, defaultIndex: defaultIndex)
    }
    
    func loadDropdownData(data: [String], defaultIndex: Int?, onSelect selectionHandler: @escaping (_ selectedText: String) -> Void) {
        self.inputView = MyPickerView(pickerData: data, dropdownField: self, defaultIndex: defaultIndex, onSelect: selectionHandler)
    }
    
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}
